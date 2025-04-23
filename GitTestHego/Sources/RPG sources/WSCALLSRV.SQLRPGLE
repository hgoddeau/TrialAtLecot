**free
Ctl-Opt Nomain Option(*NoDebugIO : *SrcStmt : *NoShowCpy) Bnddir('MAIN':'SOAP':'QC2LE');

/Include /QIBM/ProdData/OS/WebServices/V1/client/include/Axis.rpgleinc
/Include src400/QProtosrc,Usersrv
/Include src400/QProtosrc,PAGEGEVsrv
/Include src400/QProtosrc,QMHRTVMsrv
/Include src400/QProtosrc,IFSCLOBsrv

Dcl-Pr runCommando ExtProc('system');
  CmdPtr Pointer value options(*string);
END-PR;

DCL-S rc         INT(10);
DCL-S tHandle    POINTER;

Dcl-S wURI       Char(700);
Dcl-S wAuthURI   Char(256);
DCL-S propBuf    CHAR(100);
DCL-S propBuf2   CHAR(3000);
DCL-S propBuf3   CHAR(100);
Dcl-s wUser      char(10) inz(*user);
Dcl-s wCmd       varchar(1024);
Dcl-s wTimeOut   int(10) inz(60);
Dcl-s wEnv       char(3) inz('PRD');
Dcl-s wNull      int(5);
Dcl-s wNullStr   CHAR(1) inz(X'00');
Dcl-s wNone      CHAR(5);
Dcl-s wEnabled   Char(5);
Dcl-s wContentFormat varchar(64) inz('application/json');
Dcl-s wChkTmst   Timestamp inz(*sys);
Dcl-s wExtentie  varchar(10) inz('json');
Dcl-s wSoapAction varchar(128);
Dcl-s wWebService varchar(32);
Dcl-s wRequestType varchar(16) inz('POST');

Dcl-s wAuthUser varchar(30);
Dcl-s wAuthPwd  varchar(104);
Dcl-s wEncrPwd  varchar(30);
Dcl-s wAuthService  varchar(30);
Dcl-s wAuthPrefix  varchar(30);
Dcl-s wAuthenticationTicket varchar(3000);

Dcl-s IFSFullPath varchar(256);
Dcl-s wIFSPathWS  varchar(512) ;

Dcl-ds msgInf Likeds(dsMsgInf);
Dcl-ds dsCallLog ExtName('WSCALLLOG') inz(*ExtDft) End-ds;

exec sql Set Option Commit=*None, DatFmt=*Iso, CloSqlCsr=*EndActGrp;
// ------------------------------------------------------------------------------------------------
// Connect to Webservice
// ------------------------------------------------------------------------------------------------
Dcl-Proc WS_Connect Export;
Dcl-Pi *N Pointer;
 iAction varchar(128) const options(*nopass);
End-Pi;

Dcl-s lHandle    POINTER;
Dcl-s lAction    Like(iAction);

If %Parms>=%ParmNum(iAction);
  lAction=iAction;
ENDIF;

GetAuthTicket(wAuthenticationTicket);

// Create HTTP transport handle.
ws_print(wUri);
lHandle = axiscTransportCreate(wUri:AXISC_PROTOCOL_HTTP11);
if (lHandle = *NULL);
  WS_PRINT ('TransportCreate() failed');
  WS_MailMessage('Communication Error: ' + wUri:
              'Communicaton for webservice ' + wUri
              + ' could not be established. Please check the communication');
  return *Null;
endif;

// Set transport timeout
// AXISC_PROPERTY_CONNECT_TIMEOUT
// AXISC_PROPERTY_IO_TIMEOUT
axiscTransportSetProperty(lHandle: AXISC_PROPERTY_CONNECT_TIMEOUT: %addr(wTimeOut));
axiscTransportSetProperty(lHandle: AXISC_PROPERTY_IO_TIMEOUT: %addr(wTimeOut));

// Default voor onderstaande = true ...
// propBuf  = 'true' + X'00';
//axiscTransportSetProperty(lHandle: AXISC_PROPERTY_CONVERT_PAYLOAD_REQUEST
//                                  : %addr(propBuf));
//axiscTransportSetProperty(lHandle: AXISC_PROPERTY_CONVERT_PAYLOAD
//                                  : %addr(propBuf));

propBuf = %Trim(wRequestType) + X'00';
axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_METHOD: %addr(propBuf));
If wRequestType='POST' and wContentFormat<>'';
  propBuf  = 'Content-type' + X'00';
  propBuf2 = wContentFormat + X'00';
  axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_HEADER:
                            %addr(propBuf):%addr(propBuf2));
EndIf;

If lAction<>'authenticate';
  // 26-11-2020
  // Application key niet meer via parameter WSCALLAUTH, maar via bestand WSCLApiHdr
  //If wApplKey<>*blanks;
  //  propBuf  = 'x-api-key' + X'00';
  //  propBuf2 = wApplKey + X'00';
  //  axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_HEADER:
  //                            %addr(propBuf):%addr(propBuf2));
  //EndIf;

  // Extra headers required ?
  AddApiHeaders(lHandle);

  // Authorization
  If wAuthenticationTicket<>*Blanks;
    propBuf  = 'Authorization' + X'00';
    // Prefix niet meer hardgecodeerd, maar afhankelijk van service
    // propBuf2 = 'Bearer '+ %Trim(wAuthenticationTicket) + X'00';
    propBuf2 = %Trim(wAuthPrefix)+ ' '
                 + %Trim(wAuthenticationTicket) + X'00';
    axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_HEADER:
                            %addr(propBuf):%addr(propBuf2));
  EndIf;
Else;
  axiscStubSetUsername(lHandle:wAuthUser);
  axiscStubSetPassword(lHandle:wAuthPwd );
EndIf;

If wSoapAction<>*Blanks;
  propBuf  = 'SOAPaction' + X'00';
  propBuf2 = wSoapAction + X'00';
  axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_HEADER:
                         %addr(propBuf):%addr(propBuf2));
EndIf;

// Set SSL information - turn off SSLv2 and sslv3.
wNone = 'NONE' + X'00';
propBuf = '/QIBM/USERDATA/ICSS/CERT/SERVER/DEFAULT.KDB' + X'00';
propBuf3 = 'true' + X'00';
wEnabled = '1' + X'00';
/Define SSL
/If defined(SSL)
rc = axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_SSL:
                                %addr(propBuf):
                                %addr(wNULLSTR):%addr(wNULLSTR):
                                %addr(wNONE):%addr(wNONE):
                                %addr(wNONE):%addr(wNONE):%addr(wEnabled):
                                %addr(propBuf3):
                                *NULL);
/EndIf

tHandle = lHandle;

return lHandle;

End-Proc WS_Connect;
// ------------------------------------------------------------------------------------------------
// Print to standard out
// ------------------------------------------------------------------------------------------------
DCL-PROC WS_Print  Export;
  dcl-pi *n;
    msg varchar(5000) const;
  end-pi;

  dcl-pr printf extproc(*dclcase);
     template pointer value options(*string);
     dummy int(10) value options(*nopass);
  end-pr;

  dcl-c NEWLINE CONST(x'15');

  // Enkel in testfase
  //Define testws
  /If defined(testws)
    printf(%TRIM(msg) + NEWLINE);
  /EndIf

END-PROC WS_Print;
// =========================================
// Handle error
// =========================================
DCL-PROC WS_checkError Export;
  dcl-pi *n;
    msg varchar(500) const;
    iHandle Pointer const;
  end-pi;

  DCL-S axisCode   INT(10);
  DCL-S statusCode POINTER;
  DCL-S rc         INT(10);

  axisCode = axiscTransportGetLastErrorCode(iHandle);
  WS_PRINT (msg + ' call failed: ' +
         %CHAR(axisCode) + ':' +
         %STR(axiscTransportGetLastError(iHandle)));

  if (axisCode = EXC_TRANSPORT_HTTP_EXCEPTION);
    rc = axiscTransportGetProperty(iHandle:
            AXISC_PROPERTY_HTTP_STATUS_CODE: %ADDR(statusCode));
    WS_PRINT ('HTTP Status code: ' + %STR(statusCode));
  endif;

  wscError = 'Error in ' + %Trim(msg);

  // Inform IT by mail
  WS_MailMessage('Webservice error: ' + wUri:
              'Webservice error : ' + msg
              + ' call failed:' + %Char(axisCode) + ': '
              + %Str(axiscTransportGetLastError(iHandle)));

END-PROC WS_checkError;

// =========================================
// Send the request
// =========================================
Dcl-Proc WS_SendRequest Export;
  Dcl-Pi *N Ind;
    iRequest_name varchar(512) const;
    iRequest_data char(1000000) value;
    iHandle Pointer const options(*nopass);
  END-PI;

  Dcl-s lHandle Pointer;
  Dcl-s lReqName varchar(256);
  Dcl-s lTmst   Timestamp;

  If %Parms>=%ParmNum(iHandle) and iHandle<>*Null;
    lHandle=iHandle;
  Else;
    lHandle=tHandle;
  EndIf;

  // Tijdelijk afdrukken ter controle
  WS_PRINT ('Data Request: ' + iRequest_data);

  // Request bijhouden op IFS
  // Timestamp via SQL (zoals in oproepend pgm)
  exec sql set :lTmst = current_timestamp;
  // Naam = laatste tekenreeks na /
  exec sql set :lReqName = regexp_substr(:iRequest_name, '(?<=(\/|^))[^/]*$');
  exec sql set :lReqName = regexp_replace(:lReqName,  '\W+', '_');
  IFSFullPath = wIFSPathWS + '/Requests/' + lReqName + '_'
                    + %Char(lTmst:*ISO0) + '.' + wExtentie ;

  IFSClob_SaveStream(IfsFullPath:%Addr(iRequest_Data):%Len(%Trim(iRequest_data)));

  rc = axiscTransportSend(lHandle: %ADDR(irequest_data): %len(%trim(irequest_data)): 0);
  if (rc = -1);
    WS_checkError ('TransportSend()':lHandle);
  endif;

  return (rc <> (-1));

End-Proc WS_SendRequest;
// =========================================
// Flush and Receive data
// =========================================
DCL-PROC WS_flushAndReceiveData Export;
  Dcl-Pi *N varchar(30000);
    iProcPtr Pointer(*Proc) const options(*omit:*nopass);
    iHandle Pointer const options(*omit:*nopass);
    iKeyInfo char(20) const options(*nopass);
  END-PI;

  Dcl-Pr HandlerProc ExtProc(iProcPtr);
   pResponse Like(Response_data);
  END-PR;

  Dcl-s lHandle Pointer;
  DCL-S header     POINTER;
  DCL-S bytesRead  INT(10) inz(0);
  Dcl-s Response  SQLTYPE(CLOB:1000000);
  Dcl-s lPos      Uns(5);
  Dcl-s RetryCnt uns(5);
  Dcl-s lKeyInfo char(20);
  Dcl-s lRespAut varchar(1000);

  If %Parms>=%ParmNum(iHandle) and %Addr(iHandle)<>*Null
   and iHandle<>*Null;
    lHandle=iHandle;
  Else;
    lHandle=tHandle;
  EndIf;

  If %Parms>=%ParmNum(iKeyInfo) and iKeyInfo<>*Blanks;
    lKeyInfo = iKeyInfo;
  EndIf;

  clear header;

  // Flush data so request is sent
  rc = axiscTransportFlush(lHandle);
  if (rc = -1);
    WS_checkError ('TransportFlush()':lHandle);
    return '';
  endif;
  CheckDuration(wChkTmst:lKeyInfo:'TransportFlush');

  // Receive data and print out data and response to stdout
  // Try 3 times
  Dou rc > -1 or RetryCnt >= 3;
   rc = axiscTransportReceive(lHandle: %ADDR(response_data): %SIZE(response_data): 0);
   CheckDuration(wChkTmst:lKeyInfo:'TransportReceive');
   RetryCnt += 1;
  EndDo;
  if (rc = 0);
    WS_PRINT ('No data to read');
  else;
    dow rc > 0 AND bytesRead < %SIZE(response_data);
      bytesRead = bytesRead + rc;
      rc = axiscTransportReceive(lHandle:
                                 %ADDR(response_data)+bytesRead:
                                 %SIZE(response_data)-bytesRead:
                                 0);
      CheckDuration(wChkTmst:lKeyInfo:'TransportReceive');
    enddo;
  endif;

  if (rc = -1);
    WS_checkError ('TransportReceive()':lHandle);
  elseif (bytesRead  > 0);
    // WS_PRINT ('Bytes read: ' + %CHAR(bytesRead));
    // Tijdelijk
    WS_PRINT ('Data: ' + response_data);

    // Remove characters outside range CCSID 1148 ??

    // Bijhouden response op IFS
    If IFSFullPath<>*Blanks;
      IFSFullPath = %Scanrpl('/Requests/':'/Responses/':IFSFullPath);
      IFSClob_SaveStream(IfsFullPath:%Addr(response_data):%Len(%Trim(response_data)));
      wscResp = ifsFullPath;

      CheckDuration(wChkTmst:lKeyInfo:'SaveStream');
    EndIf;

    // Verwerken JSON Response
    lRespAut=Response_data;
    exec sql set :lPos = regexp_instr(:lRespAut, 'Unauthorized',  1, 1, 0, 'i');
    If lPos=0 and %Parms>=%ParmNum(iProcPtr) and %Addr(iProcPtr)<>*Null and iProcPtr<>*Null;
      handlerProc(response_data);
    EndIf;

  endif;

  if (rc > -1);
    rc = axiscTransportGetProperty(lHandle:
                                   AXISC_PROPERTY_HTTP_STATUS_CODE:
                                   %addr(header));
    if (rc = -1);
      WS_checkError ('TransportGetProperty()':lHandle);
    else;
      WS_PRINT ('HTTP status code: ' + %str(header));

      // Informational responses (100 199)
      // Successful responses (200 299)
      // Redirects (300 399)
      // Client errors (400 499)
      // Server errors (500 599)
      If %Str(header)>='400';
        wscerror = 'Http status ' + %Str(header);
      EndIf;
      If response='';
        response_data = %Str(header);
        wscResp = response_data;
      Endif;
    endif;
  endif;

  return response_data;

END-PROC WS_flushAndReceiveData;
// =========================================
// Report SQL-error
// =========================================
Dcl-Proc WS_SQLmessage Export;
Dcl-Pi *N varchar(512);
 iSqlCod int(10) const;
 iSqlErm char(256) const;
 iSqlStt char(5) const;
 iSubj varchar(128) const;
 iMail Ind const options(*nopass);
END-PI;

  Dcl-s lMail Ind;
  Dcl-s lEmail     char(128);
  Dcl-s lLongMsg   char(512);

  If iSqlCod=0 or iSqlStt < '02';
    return *Blanks;
  ENDIF;

  If %Parms>=%ParmNum(iMail);
    lMail=iMail;
  ENDIF;

  QMHrtvM(MsgInf:%Size(MsgInf):'RTVM0100':'SQL' + %Editc(%Dec(%Abs(iSQLCOD):4:0):'X')
           :'QSQLMSG   *LIBL     ':iSQLERM:%Size(iSQLERM):'*YES':'*YES':APIError);

  // Melden fout ?
  If lMail;
    WS_MailMessage(iSubj:
               'SQL-error +
               : SQLCOD = ' + %Char(iSQLCOD) +
               ' ** ' + MsgInf.Message);
  EndIf;
  return MsgInf.Message;

End-Proc WS_SQLmessage;
// ------------------------------------------------------------------------------------------------
Dcl-Proc WS_MailMessage Export;
Dcl-Pi *N;
  iSubj varchar(128) const;
  iBody varchar(512) const;
  iRecp varchar(128) const options(*nopass);
END-PI;

  Dcl-s lRecp varchar(128) inz('hgoddeau@vanmarcke.be');
  Dcl-s lSubj char(64);  // Mag max 64a zijn

  If wEnv<>'PRD' or wUser='HENDRIK';
    lRecp=wUser;
  ENDIF;
  If %Parms>=%ParmNum(iRecp) and iRecp<>*Blanks;
    lRecp=iRecp;
  EndIf;
  If %Scan('@':lRecp)=0;
    lRecp = User_Email(lRecp);
  ENDIF;

  exec sql set :lSubj = regexp_replace(:iSubj, '\W+', '');

  wCmd = 'MAIL FROM(Noreply@vanmarcke.be ''Van Marcke'') +
            TO((' + %Trim(lRecp) + ')) +
            SUBJECT(''' + lSubj + ''') +
            BODYTXT(*LONGMSG) +
            LONGMSG(''' + iBody + ''')';
  runCommando(%TrimR(wCmd));

End-Proc WS_MailMessage;
// ------------------------------------------------------------------------------------------------
Dcl-Proc WS_ReqAuthTicket Export;

Dcl-s lPos Uns(5);
Dcl-s lResponse char(5000);
Dcl-s lRequest  char(256);
Dcl-s lHandle   Pointer;
Dcl-s lRequestType like(wRequestType);
Dcl-s lIFSFullPath like(IFSFullPath);
Dcl-s lURIsv Like(wURI);

// Get Authentication Ticket
  // Opbouw Request
  lRequestType = wRequestType;
  lIFSFullPath = IFSFullPath;
  reset wRequestType;
  // Connect to "authenticate" webservice when provided
  lURIsv = wUri;
  wUri = wAuthURI;

 If wAuthService<>*Blanks;
  lHandle = WS_Connect('authenticate');

  If WS_SendRequest(wAuthService:lRequest:lHandle);
    lResponse = WS_flushAndReceiveData(*omit:lHandle);
    // get authenticationTicket
    exec sql set :lPos= regexp_instr(:lResponse, '\:\s*"');
    If lPos<>0;
      lResponse = %Subst(lResponse:lPos);
      exec sql set :lResponse = regexp_replace(:lResponse, '\:\s*"', '');
      exec sql set :lResponse = regexp_substr(:lResponse, '[^"]+', 1, 1);
    Else;
      // geldige response moet van type : zijn (json)
      // xml voorlopig niet voorzien
      reset lResponse;
    EndIf;
  endif;
 ElseIf wAuthPrefix<>*Blanks and wAuthUser<>*Blanks;
   // Basic authentication --> user:password Base64 encoded
   exec sql set :lResponse = systools.base64encode(cast(trim(:wAuthUser)
                               concat ':' concat trim(:wAuthpwd)
                                 as varchar(64) ccsid 1208));
 EndIf;

  // Wegschrijven huidig AuthenticationTicket
  exec sql Merge into WSCLAUTHTK
    using (values(:wEnv, :wWebService, :lResponse))
        as val(pAuthEnv, pWebService, pAuthTick)
      on AuthEnv=pAuthEnv  and WebService=pWebService
   When matched then update set AuthTicket = pAuthTick,
                                AuthTmStmp = current_timestamp
   When Not matched then insert values(pAuthEnv, pWebService,
                            pAuthTick, current_timestamp);

  // Cleanup handle.
  axiscTransportDestroy(lHandle);
  wUri = lURIsv ;

  wRequestType = lRequestType;
  IFSFullPath  = lIFSFullPath;
End-Proc;
// ------------------------------------------------------------------------------------------------
Dcl-Proc GetAuthTicket;
Dcl-Pi *N;
  iAutTicket varchar(3000);
END-PI;
Dcl-s lAutTicket char(3000);

exec sql Values(Select AuthTicket from WSCLAUTHTK
                   where AuthEnv=:wEnv and WebService=:wWebService
            ) into :lAutTicket:wNull;
// wanneer geen record gevonden wordt lAutTicket soms toch opgevuld ...
// Test op wNull !
If wNull=-1;
  clear lAutTicket;
ENDIF;

iAutTicket=%Trim(lAutTicket);

End-Proc;
// ------------------------------------------------------------------------------------------------
Dcl-Proc WS_ProcessRequest Export;
Dcl-Pi *N Char(30000) ;
 iWebService char(10) const;
 iAction varchar(512) const;
 iRequest_data char(1000000) const options(*omit:*nopass);
 iProcPtr Pointer(*Proc) const options(*omit:*nopass);
 oIFSReqResp varchar(128) options(*omit:*nopass);
 iKeyInfo char(20) const options(*omit:*nopass);
 iEnv char(3) const options(*nopass);
END-PI;

Dcl-s AuthTestOK Ind;
Dcl-s RetryCnt uns(5);
Dcl-s Response SQLTYPE(CLOB:10000000);
Dcl-s lPos uns(10);
Dcl-s lKeyInfo char(20);
Dcl-s lData char(1000000);
Dcl-s lDataSh char(100);
Dcl-s lTmst Timestamp;
Dcl-s lAction varchar(128);
Dcl-s lRespAut varchar(1000);

If %Parms>=%ParmNum(iRequest_data) and %Addr(iRequest_data)<>*Null;
  lData = iRequest_data;
EndIf;
lDataSh = lData;
Clear dsCallLog;

If %Parms>=%ParmNum(iKeyInfo) and %Addr(iKeyInfo)<>*Null and iKeyInfo<>*Blanks;
  lKeyInfo = iKeyInfo;
EndIf;
reset wEnv;
If %Parms>=%ParmNum(iEnv) and iEnv<>*Blanks;
  wEnv=iEnv;
EndIf;
wWebService = iWebService;

wscEnv = wEnv;
wscService = wWebService;

// Webservice variabelen ophalen
dsPagegev=Pagegev_Lezen('WSCALLURI':'':'':iWebService);
wURI = %Trim(gWawa1pag) + %Trim(gWawa2pag) + %Trim(gWawa3pag)
      + %Trim(gWawa4pag) + %Trim(gWawa5pag) + iAction ;
wAuthURI = %Trim(gWawa1pag) + %Trim(gWawa2pag) + %Trim(gWawa3pag)
      + %Trim(gWawa4pag) + %Trim(gWawa5pag);
dsPagegev=Pagegev_Lezen('WSCALL':'':'':iWebService);
wContentformat = %Trim(gWawa1pag);
exec sql set :wExtentie = regexp_substr(:wContentFormat, '[^/;]*(?=(\s+|$|;))');
reset wRequestType;
If gWawa2pag<>*Blanks;
  wRequestType = %Trim(gWawa2pag);
EndIf;
wIFSPathWS = %Trim(gWawa3pag) + %Trim(gWawa4pag);
If wIFSPathWS=*Blanks;
  wIFSPathWS = '/tmp';
EndIf;
dsPagegev=Pagegev_Lezen('WSCALLAUTH':'':'':iWebService);
wAuthUser = %Trim(gWawa1Pag);
wEncrPwd  = %Trim(gWawa2Pag);
// get Authentication password from WSCLAUTHPW
exec sql set encryption password :wEncrPwd;
exec sql Values(Select decrypt_char(AuthPw) from WSCLAUTHPW
                 where AuthEnv=:wEnv and Webservice=:wWebService
                   and AuthUser=:wAuthUser) into :wAuthPwd:wNull;

//wApplKey  = %Trim(gwawa3pag) + %Trim(gwawa4pag);
wAuthPrefix = %Trim(gwawa3pag);
wAuthService= %Trim(gwawa5pag);
wAuthUri = %Trim(wAuthUri) + %Trim(gwawa5pag);

Clear wSoapAction;
exec sql set :lPos = regexp_instr(:lDataSh, 'soap',  1, 1, 0, 'i');
If lPos<>0;
  wSoapAction=iAction;
Endif;

exec sql set :lTmst = now();
wscTmst = lTmst;
wscUri  = wUri;

clear IFSFullPath;
// enkel tekens na laatste "/" behouden
exec sql set :lAction = regexp_substr(:iAction, '[^/]+($|\s)');
// niet \w vervangen door "_"
exec sql set :lAction = regexp_replace(:lAction, '\W+', '_');
IFSFullPath = wIFSPathWS + '/Requests/' + %Trim(lAction) + '_'
                    + %Char(lTmst:*ISO0) + '.' + wExtentie ;

Dou AuthTestOk;
  exec sql set :wChkTmst = now();
  tHandle = WS_Connect();
  CheckDuration(wChkTmst:lKeyInfo:'Connect');
  If wRequestType='GET' or WS_SendRequest(iAction:lData);
      If wRequestType<>'GET';
        wscRequ=IFSFullPath;
      EndIf;
      If %Parms>=%ParmNum(oIFSReqResp) and %Addr(oIFSReqResp)<>*Null;
        // Bestandsnaam (Request/Response) : Meerdere Niet "/" aan einde string
        exec sql set :oIFSReqResp = regexp_substr(:IFSFullPath, '[^/]+$');
      ENDIF;
      If %Parms>=%ParmNum(iProcPtr) and %Addr(iProcPtr)<>*Null and iProcPtr<>*Null;
        response_data = WS_flushAndReceiveData(iProcPtr:*omit:lKeyInfo);
      Else;
        response_data = WS_flushAndReceiveData(*omit:*omit:lKeyInfo);
      EndIf;
      CheckDuration(wChkTmst:lKeyInfo:'FlushAndReceive');
      RetryCnt += 1;
      // Not Authorized then get new AuthorizationTicked
      lRespAut = response_data;
      exec sql set :lPos = regexp_instr(:lRespAut, 'Unauthorized',  1, 1, 0, 'i');
      If lPos=0 or RetryCnt>3;
        AuthTestOk=*On;
      Else;
        WS_ReqAuthTicket();
        // Work with new unique streamfile (When GET --> no request)
        If wRequestType='GET';
          exec sql set :lTmst = now();
          wscTmst = lTmst;
          IFSFullPath = wIFSPathWS + '/Requests/' + %Trim(lAction) + '_'
                    + %Char(lTmst:*ISO0) + '.' + wExtentie ;
        ENDIF;
      EndIf;
  Endif;
EndDo;

// Cleanup handle.
axiscTransportDestroy(tHandle);

// Error ?
exec sql set :lPos = regexp_instr(:response, 'Error',  1, 1, 0, 'i');
If lPos>0;
  wscError = Response_data;
ENDIF;


// Save log
exec sql Insert into WSCALLLOG values(:dsCallLog);

return Response_data;

END-PROC;
// ------------------------------------------------------------------------------------------------
Dcl-Proc CheckDuration;
Dcl-Pi *N;
 iTmst Timestamp;
 iKey char(20) const;
 iAction char(20) const;
End-Pi;

Dcl-s lTmst Timestamp;

If iKey<>*Blanks;
  exec sql set :lTmst = now();
  // Check duration
  If %Diff(lTmst:iTmst:*Seconds)>5;
    //exec sql Insert into LOGADDSHIP values(:iKey, :iAction, :iTmst);
    //exec sql Insert into LOGADDSHIP values(:iKey, :iAction, :lTmst);
  EndIf;
EndIf;

End-Proc CheckDuration;
// ------------------------------------------------------------------------------------------------
Dcl-Proc AddApiHeaders;
Dcl-Pi *N;
  iHandle Pointer Const;
End-Pi;

Dcl-s lKey char(64);
Dcl-s lVal char(3000);
Dcl-s lTyp Int(10);

  // Check if additional headers need to be added
  exec sql Declare cs_Hdr asensitive scroll cursor with hold for
    Select HdrTyp, HdrKey, HdrVal from WSCLApiHdr
      where ApiEnv=:wEnv and webservice=:wWebservice;
  exec sql Open cs_Hdr;
  exec sql Fetch first from cs_Hdr into :lTyp:wNull, :lKey:wNull, :lVal:wNull;
  Dow SqlStt<'02';

    propBuf  = %Trim(lKey) + X'00';
    propBuf2 = %Trim(lVal) + X'00';
    If lTyp<>0;
      If lVal<>*Blanks;
        axiscTransportSetProperty(iHandle: lTyp:
                              %addr(propBuf):%addr(propBuf2));
      Else;
        axiscTransportSetProperty(iHandle: lTyp:%addr(propBuf));
      EndIf;
    Else;
    axiscTransportSetProperty(iHandle: AXISC_PROPERTY_HTTP_HEADER:
                              %addr(propBuf):%addr(propBuf2));
    EndIf;

    exec sql Fetch next from cs_Hdr into :lTyp:wNull, :lKey:wNull, :lVal:wNull;
  EndDo;
  exec sql close cs_Hdr;

End-Proc;
// ------------------------------------------------------------------------------------------------
