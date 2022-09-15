000100200124**free
000200191122Ctl-Opt Nomain Option(*NoDebugIO : *SrcStmt : *NoShowCpy) Bnddir('MAIN':'SOAP':'QC2LE');
000300191122
000400191122/Include /QIBM/ProdData/OS/WebServices/V1/client/include/Axis.rpgleinc
000500191122/Include src400/QProtosrc,Usersrv
000600191122/Include src400/QProtosrc,PAGEGEVsrv
000700191122/Include src400/QProtosrc,QMHRTVMsrv
000800191122/Include src400/QProtosrc,IFSCLOBsrv
000900191122
001000191122Dcl-Pr runCommando ExtProc('system');
001100191122  CmdPtr Pointer value options(*string);
001200191122END-PR;
001300191122
001400191122DCL-S rc         INT(10);
001500191122DCL-S tHandle    POINTER;
001600191122
001601210326Dcl-S wURI       Char(700);
001602200113Dcl-S wAuthURI   Char(256);
002000191122DCL-S propBuf    CHAR(100);
002100200123DCL-S propBuf2   CHAR(3000);
002200191122DCL-S propBuf3   CHAR(100);
002300191122Dcl-s wUser      char(10) inz(*user);
002400191122Dcl-s wCmd       varchar(1024);
002500191122Dcl-s wTimeOut   int(10) inz(60);
002600191122Dcl-s wEnv       char(3) inz('PRD');
002700191122Dcl-s wNull      int(5);
002800191122Dcl-s wNullStr   CHAR(1) inz(X'00');
002900191122Dcl-s wNone      CHAR(5);
003000191122Dcl-s wEnabled   Char(5);
003001191220Dcl-s wContentFormat varchar(64) inz('application/json');
003002191122Dcl-s wChkTmst   Timestamp inz(*sys);
003003191220Dcl-s wExtentie  varchar(10) inz('json');
003004191220Dcl-s wSoapAction varchar(128);
003005200110Dcl-s wWebService varchar(32);
003006200110Dcl-s wRequestType varchar(16) inz('POST');
003007200110
003008200110Dcl-s wAuthUser varchar(30);
003009200124Dcl-s wAuthPwd  varchar(104);
003010200124Dcl-s wEncrPwd  varchar(30);
003011200110Dcl-s wAuthService  varchar(30);
003012201126Dcl-s wAuthPrefix  varchar(30);
003013200123Dcl-s wAuthenticationTicket varchar(3000);
003100191122
003200191122Dcl-s IFSFullPath varchar(256);
003300191122Dcl-s wIFSPathWS  varchar(512) ;
003400191122
003500191122Dcl-ds msgInf Likeds(dsMsgInf);
003501200124Dcl-ds dsCallLog ExtName('WSCALLLOG') inz(*ExtDft) End-ds;
003600191122
003700191122exec sql Set Option Commit=*None, DatFmt=*Iso, CloSqlCsr=*EndActGrp;
003800191122// ------------------------------------------------------------------------------------------------
003900191122// Connect to Webservice
004000191122// ------------------------------------------------------------------------------------------------
004100191122Dcl-Proc WS_Connect Export;
004200191122Dcl-Pi *N Pointer;
004201200110 iAction varchar(128) const options(*nopass);
004500191122End-Pi;
004600191122
004700191122Dcl-s lHandle    POINTER;
004701200110Dcl-s lAction    Like(iAction);
004702200110
004703200110If %Parms>=%ParmNum(iAction);
004704200110  lAction=iAction;
004705200110ENDIF;
004706191125
004707200110GetAuthTicket(wAuthenticationTicket);
004708200110
006100191122// Create HTTP transport handle.
006101210119ws_print(wUri);
006200191125lHandle = axiscTransportCreate(wUri:AXISC_PROTOCOL_HTTP11);
006300191122if (lHandle = *NULL);
006400191122  WS_PRINT ('TransportCreate() failed');
006500191125  WS_MailMessage('Communication Error: ' + wUri:
006600191125              'Communicaton for webservice ' + wUri
006700191122              + ' could not be established. Please check the communication');
006800191122  return *Null;
006900191122endif;
006901200113
006902200113// Set transport timeout
006903200113// AXISC_PROPERTY_CONNECT_TIMEOUT
006904200113// AXISC_PROPERTY_IO_TIMEOUT
006905200113axiscTransportSetProperty(lHandle: AXISC_PROPERTY_CONNECT_TIMEOUT: %addr(wTimeOut));
006906200113axiscTransportSetProperty(lHandle: AXISC_PROPERTY_IO_TIMEOUT: %addr(wTimeOut));
007000191122
007001210119// Default voor onderstaande = true ...
007002210119// propBuf  = 'true' + X'00';
007003210119//axiscTransportSetProperty(lHandle: AXISC_PROPERTY_CONVERT_PAYLOAD_REQUEST
007004210119//                                  : %addr(propBuf));
007005210119//axiscTransportSetProperty(lHandle: AXISC_PROPERTY_CONVERT_PAYLOAD
007006210119//                                  : %addr(propBuf));
007007210119
007008200113propBuf = %Trim(wRequestType) + X'00';
007009200113axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_METHOD: %addr(propBuf));
007010210216If wRequestType='POST' and wContentFormat<>'';
007100200113  propBuf  = 'Content-type' + X'00';
007200200113  propBuf2 = wContentFormat + X'00';
007300200113  axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_HEADER:
007400200113                            %addr(propBuf):%addr(propBuf2));
007401200113EndIf;
007402200110
007403200113If lAction<>'authenticate';
007404201126  // 26-11-2020
007405201126  // Application key niet meer via parameter WSCALLAUTH, maar via bestand WSCLApiHdr
007406201126  //If wApplKey<>*blanks;
007407201126  //  propBuf  = 'x-api-key' + X'00';
007408201126  //  propBuf2 = wApplKey + X'00';
007409201126  //  axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_HEADER:
007410201126  //                            %addr(propBuf):%addr(propBuf2));
007411201126  //EndIf;
007412201002
007413201002  // Extra headers required ?
007414201002  AddApiHeaders(lHandle);
007415200110
007416201002  // Authorization
007417200113  If wAuthenticationTicket<>*Blanks;
007418200113    propBuf  = 'Authorization' + X'00';
007419201126    // Prefix niet meer hardgecodeerd, maar afhankelijk van service
007420201126    // propBuf2 = 'Bearer '+ %Trim(wAuthenticationTicket) + X'00';
007421201126    propBuf2 = %Trim(wAuthPrefix)+ ' '
007422201126                 + %Trim(wAuthenticationTicket) + X'00';
007423200113    axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_HEADER:
007424200113                            %addr(propBuf):%addr(propBuf2));
007425200113  EndIf;
007426200113Else;
007427200113  axiscStubSetUsername(lHandle:wAuthUser);
007428200113  axiscStubSetPassword(lHandle:wAuthPwd );
007429200110EndIf;
007430200110
007431191220If wSoapAction<>*Blanks;
007432191220  propBuf  = 'SOAPaction' + X'00';
007433191220  propBuf2 = wSoapAction + X'00';
007434191224  axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_HEADER:
007435191220                         %addr(propBuf):%addr(propBuf2));
007436191220EndIf;
009200191122
009300191122// Set SSL information - turn off SSLv2 and sslv3.
009500191122wNone = 'NONE' + X'00';
009600191122propBuf = '/QIBM/USERDATA/ICSS/CERT/SERVER/DEFAULT.KDB' + X'00';
009700191122propBuf3 = 'true' + X'00';
009800191122wEnabled = '1' + X'00';
009801200110/Define SSL
009802191220/If defined(SSL)
009900191122rc = axiscTransportSetProperty(lHandle: AXISC_PROPERTY_HTTP_SSL:
010000191122                                %addr(propBuf):
010100191122                                %addr(wNULLSTR):%addr(wNULLSTR):
010200191122                                %addr(wNONE):%addr(wNONE):
010300191122                                %addr(wNONE):%addr(wNONE):%addr(wEnabled):
010400191122                                %addr(propBuf3):
010500191122                                *NULL);
010501191220/EndIf
010700191122
010900191122tHandle = lHandle;
011000191122
011100191122return lHandle;
011200191122
011300191122End-Proc WS_Connect;
011400191122// ------------------------------------------------------------------------------------------------
011500191122// Print to standard out
011600191122// ------------------------------------------------------------------------------------------------
011700191122DCL-PROC WS_Print  Export;
011800191122  dcl-pi *n;
011900191122    msg varchar(5000) const;
012000191122  end-pi;
012100191122
012200191122  dcl-pr printf extproc(*dclcase);
012300191122     template pointer value options(*string);
012400191122     dummy int(10) value options(*nopass);
012500191122  end-pr;
012600191122
012700191122  dcl-c NEWLINE CONST(x'15');
012800191122
012801200127  // Enkel in testfase
012802210127  //Define testws
012803210119  /If defined(testws)
012900210119    printf(%TRIM(msg) + NEWLINE);
012901210119  /EndIf
013000191122
013100191122END-PROC WS_Print;
013200191122// =========================================
013300191122// Handle error
013400191122// =========================================
013500191122DCL-PROC WS_checkError Export;
013600191122  dcl-pi *n;
013700191122    msg varchar(500) const;
013800191122    iHandle Pointer const;
013900191122  end-pi;
014000191122
014100191122  DCL-S axisCode   INT(10);
014200191122  DCL-S statusCode POINTER;
014300191122  DCL-S rc         INT(10);
014400191122
014500191122  axisCode = axiscTransportGetLastErrorCode(iHandle);
014600191122  WS_PRINT (msg + ' call failed: ' +
014700191122         %CHAR(axisCode) + ':' +
014800191122         %STR(axiscTransportGetLastError(iHandle)));
014900191122
015000191122  if (axisCode = EXC_TRANSPORT_HTTP_EXCEPTION);
015100191122    rc = axiscTransportGetProperty(iHandle:
015200191122            AXISC_PROPERTY_HTTP_STATUS_CODE: %ADDR(statusCode));
015300191122    WS_PRINT ('HTTP Status code: ' + %STR(statusCode));
015400191122  endif;
015401200529
015402200529  wscError = 'Error in ' + %Trim(msg);
015800191122
015900191122  // Inform IT by mail
016000191125  WS_MailMessage('Webservice error: ' + wUri:
016100191122              'Webservice error : ' + msg
016200191122              + ' call failed:' + %Char(axisCode) + ': '
016300191122              + %Str(axiscTransportGetLastError(iHandle)));
016400191122
016500191122END-PROC WS_checkError;
016600191122
016700191122// =========================================
016800191122// Send the request
016900191122// =========================================
017000191122Dcl-Proc WS_SendRequest Export;
017100191122  Dcl-Pi *N Ind;
017200210326    iRequest_name varchar(512) const;
017300201208    iRequest_data char(1000000) value;
017400191122    iHandle Pointer const options(*nopass);
017500191122  END-PI;
017600191122
017700191122  Dcl-s lHandle Pointer;
017800210216  Dcl-s lReqName varchar(256);
017900191122  Dcl-s lTmst   Timestamp;
018000191122
018100191122  If %Parms>=%ParmNum(iHandle) and iHandle<>*Null;
018200191122    lHandle=iHandle;
018300191122  Else;
018400191122    lHandle=tHandle;
018500191122  EndIf;
018600191122
018700191122  // Tijdelijk afdrukken ter controle
018800191122  WS_PRINT ('Data Request: ' + iRequest_data);
018900191122
019400191122  // Request bijhouden op IFS
019500191122  // Timestamp via SQL (zoals in oproepend pgm)
019600191122  exec sql set :lTmst = current_timestamp;
019700191122  // Naam = laatste tekenreeks na /
019800191122  exec sql set :lReqName = regexp_substr(:iRequest_name, '(?<=(\/|^))[^/]*$');
019801200124  exec sql set :lReqName = regexp_replace(:lReqName,  '\W+', '_');
019900191122  IFSFullPath = wIFSPathWS + '/Requests/' + lReqName + '_'
020000191220                    + %Char(lTmst:*ISO0) + '.' + wExtentie ;
020200191122
020300191122  IFSClob_SaveStream(IfsFullPath:%Addr(iRequest_Data):%Len(%Trim(iRequest_data)));
020400191122
020500191122  rc = axiscTransportSend(lHandle: %ADDR(irequest_data): %len(%trim(irequest_data)): 0);
020600191122  if (rc = -1);
020700191122    WS_checkError ('TransportSend()':lHandle);
020800191122  endif;
020900191122
021000191122  return (rc <> (-1));
021100191122
021200191122End-Proc WS_SendRequest;
021300191122// =========================================
021400191122// Flush and Receive data
021500191122// =========================================
021600191122DCL-PROC WS_flushAndReceiveData Export;
021700191122  Dcl-Pi *N varchar(30000);
021800191122    iProcPtr Pointer(*Proc) const options(*omit:*nopass);
021900191122    iHandle Pointer const options(*omit:*nopass);
022000210127    iKeyInfo char(20) const options(*nopass);
022100191122  END-PI;
022200191122
022300191122  Dcl-Pr HandlerProc ExtProc(iProcPtr);
022400210312   pResponse Like(Response_data);
022500191122  END-PR;
022600191122
022700191122  Dcl-s lHandle Pointer;
022800191122  DCL-S header     POINTER;
022900191122  DCL-S bytesRead  INT(10) inz(0);
023000210312  Dcl-s Response  SQLTYPE(CLOB:1000000);
023100191122  Dcl-s lPos      Uns(5);
023200191122  Dcl-s RetryCnt uns(5);
023300191122  Dcl-s lKeyInfo char(20);
023301210312  Dcl-s lRespAut varchar(1000);
023400210312
023500191122  If %Parms>=%ParmNum(iHandle) and %Addr(iHandle)<>*Null
023600191122   and iHandle<>*Null;
023700191122    lHandle=iHandle;
023800191122  Else;
023900191122    lHandle=tHandle;
024000191122  EndIf;
024100191122
024200191122  If %Parms>=%ParmNum(iKeyInfo) and iKeyInfo<>*Blanks;
024300191122    lKeyInfo = iKeyInfo;
024400191122  EndIf;
024500191122
024600191122  clear header;
024700191122
024800191122  // Flush data so request is sent
024900191122  rc = axiscTransportFlush(lHandle);
025000191122  if (rc = -1);
025200191122    WS_checkError ('TransportFlush()':lHandle);
025300191122    return '';
025400191122  endif;
025500191122  CheckDuration(wChkTmst:lKeyInfo:'TransportFlush');
025600191122
025700191122  // Receive data and print out data and response to stdout
025800191122  // Try 3 times
025900191122  Dou rc > -1 or RetryCnt >= 3;
026000210312   rc = axiscTransportReceive(lHandle: %ADDR(response_data): %SIZE(response_data): 0);
026100191122   CheckDuration(wChkTmst:lKeyInfo:'TransportReceive');
026200191122   RetryCnt += 1;
026300191122  EndDo;
026400191122  if (rc = 0);
026500191122    WS_PRINT ('No data to read');
026600191122  else;
026700210312    dow rc > 0 AND bytesRead < %SIZE(response_data);
026800191122      bytesRead = bytesRead + rc;
026900191122      rc = axiscTransportReceive(lHandle:
027000210312                                 %ADDR(response_data)+bytesRead:
027100210312                                 %SIZE(response_data)-bytesRead:
027200191122                                 0);
027300191122      CheckDuration(wChkTmst:lKeyInfo:'TransportReceive');
027400191122    enddo;
027500191122  endif;
027600191122
027700191122  if (rc = -1);
027800191122    WS_checkError ('TransportReceive()':lHandle);
027900191122  elseif (bytesRead  > 0);
028000191122    // WS_PRINT ('Bytes read: ' + %CHAR(bytesRead));
028100191122    // Tijdelijk
028200210312    WS_PRINT ('Data: ' + response_data);
028300191122
028400191122    // Remove characters outside range CCSID 1148 ??
028500191122
028600191122    // Bijhouden response op IFS
028700191122    If IFSFullPath<>*Blanks;
028800191122      IFSFullPath = %Scanrpl('/Requests/':'/Responses/':IFSFullPath);
028900210312      IFSClob_SaveStream(IfsFullPath:%Addr(response_data):%Len(%Trim(response_data)));
028901200124      wscResp = ifsFullPath;
029000191122
029100191122      CheckDuration(wChkTmst:lKeyInfo:'SaveStream');
029200191122    EndIf;
029300191122
029400191122    // Verwerken JSON Response
029401210312    lRespAut=Response_data;
029500210312    exec sql set :lPos = regexp_instr(:lRespAut, 'Unauthorized',  1, 1, 0, 'i');
029600191122    If lPos=0 and %Parms>=%ParmNum(iProcPtr) and %Addr(iProcPtr)<>*Null and iProcPtr<>*Null;
029700210312      handlerProc(response_data);
029800191122    EndIf;
029900191122
030000191122  endif;
030100191122
030200191122  if (rc > -1);
030300191122    rc = axiscTransportGetProperty(lHandle:
030400191122                                   AXISC_PROPERTY_HTTP_STATUS_CODE:
030500191122                                   %addr(header));
030600191122    if (rc = -1);
030700191122      WS_checkError ('TransportGetProperty()':lHandle);
030800191122    else;
030900210119      WS_PRINT ('HTTP status code: ' + %str(header));
030901210118
030902210118      // Informational responses (100 199)
030903210118      // Successful responses (200 299)
030904210118      // Redirects (300 399)
030905210118      // Client errors (400 499)
030906210118      // Server errors (500 599)
030908210127      If %Str(header)>='400';
030909210127        wscerror = 'Http status ' + %Str(header);
030910210127      EndIf;
030911210127      If response='';
030912210312        response_data = %Str(header);
030913210312        wscResp = response_data;
030914210127      Endif;
031000191122    endif;
031100191122  endif;
031200191122
031300210312  return response_data;
031400191122
031500191122END-PROC WS_flushAndReceiveData;
032400191122// =========================================
032500191122// Report SQL-error
032600191122// =========================================
032700191122Dcl-Proc WS_SQLmessage Export;
032800191122Dcl-Pi *N varchar(512);
032900191122 iSqlCod int(10) const;
033000191122 iSqlErm char(256) const;
033100191122 iSqlStt char(5) const;
033200191122 iSubj varchar(128) const;
033300191122 iMail Ind const options(*nopass);
033400191122END-PI;
033500191122
033600191122  Dcl-s lMail Ind;
033700191122  Dcl-s lEmail     char(128);
033800191122  Dcl-s lLongMsg   char(512);
033900191122
034000191122  If iSqlCod=0 or iSqlStt < '02';
034100191122    return *Blanks;
034200191122  ENDIF;
034300191122
034400191122  If %Parms>=%ParmNum(iMail);
034500191122    lMail=iMail;
034600191122  ENDIF;
034700191122
034800191122  QMHrtvM(MsgInf:%Size(MsgInf):'RTVM0100':'SQL' + %Editc(%Dec(%Abs(iSQLCOD):4:0):'X')
034900191122           :'QSQLMSG   *LIBL     ':iSQLERM:%Size(iSQLERM):'*YES':'*YES':APIError);
035000191122
035100191122  // Melden fout ?
035200191122  If lMail;
035300191122    WS_MailMessage(iSubj:
035400191122               'SQL-error +
035500191122               : SQLCOD = ' + %Char(iSQLCOD) +
035600191122               ' ** ' + MsgInf.Message);
035700191122  EndIf;
035800191122  return MsgInf.Message;
035900191122
036000191122End-Proc WS_SQLmessage;
036100191122// ------------------------------------------------------------------------------------------------
036200191122Dcl-Proc WS_MailMessage Export;
036300191122Dcl-Pi *N;
036400191122  iSubj varchar(128) const;
036500191122  iBody varchar(512) const;
036600191122  iRecp varchar(128) const options(*nopass);
036700191122END-PI;
036800191122
036900200512  Dcl-s lRecp varchar(128) inz('hgoddeau@vanmarcke.be');
036901200528  Dcl-s lSubj char(64);  // Mag max 64a zijn
037000191122
037100200110  If wEnv<>'PRD' or wUser='HENDRIK';
037200191122    lRecp=wUser;
037300191122  ENDIF;
037400191122  If %Parms>=%ParmNum(iRecp) and iRecp<>*Blanks;
037500191122    lRecp=iRecp;
037600191122  EndIf;
037700191122  If %Scan('@':lRecp)=0;
037800191122    lRecp = User_Email(lRecp);
037900191122  ENDIF;
037901200124
037902200124  exec sql set :lSubj = regexp_replace(:iSubj, '\W+', '');
038000191122
038100191122  wCmd = 'MAIL FROM(Noreply@vanmarcke.be ''Van Marcke'') +
038200191122            TO((' + %Trim(lRecp) + ')) +
038300200124            SUBJECT(''' + lSubj + ''') +
038400191122            BODYTXT(*LONGMSG) +
038500191122            LONGMSG(''' + iBody + ''')';
038600191122  runCommando(%TrimR(wCmd));
038700191122
038800191122End-Proc WS_MailMessage;
038801200110// ------------------------------------------------------------------------------------------------
038802200110Dcl-Proc WS_ReqAuthTicket Export;
038803200110
038811200110Dcl-s lPos Uns(5);
038812200123Dcl-s lResponse char(5000);
038813200110Dcl-s lRequest  char(256);
038814200110Dcl-s lHandle   Pointer;
038815200110Dcl-s lRequestType like(wRequestType);
038816200316Dcl-s lIFSFullPath like(IFSFullPath);
038817200113Dcl-s lURIsv Like(wURI);
038818200110
038820200110// Get Authentication Ticket
038821200110  // Opbouw Request
038832200110  lRequestType = wRequestType;
038833200316  lIFSFullPath = IFSFullPath;
038834200110  reset wRequestType;
038835201202  // Connect to "authenticate" webservice when provided
038836200113  lURIsv = wUri;
038838200113  wUri = wAuthURI;
038839201202
038840201202 If wAuthService<>*Blanks;
038841200110  lHandle = WS_Connect('authenticate');
038842200110
038843200110  If WS_SendRequest(wAuthService:lRequest:lHandle);
038844200110    lResponse = WS_flushAndReceiveData(*omit:lHandle);
038845200110    // get authenticationTicket
038846200110    exec sql set :lPos= regexp_instr(:lResponse, '\:\s*"');
038847200110    If lPos<>0;
038848200110      lResponse = %Subst(lResponse:lPos);
038849201217      exec sql set :lResponse = regexp_replace(:lResponse, '\:\s*"', '');
038850201217      exec sql set :lResponse = regexp_substr(:lResponse, '[^"]+', 1, 1);
038851201217    Else;
038852201217      // geldige response moet van type : zijn (json)
038853201217      // xml voorlopig niet voorzien
038854201217      reset lResponse;
038855200110    EndIf;
038856200110  endif;
038857201202 ElseIf wAuthPrefix<>*Blanks and wAuthUser<>*Blanks;
038858201202   // Basic authentication --> user:password Base64 encoded
038859201202   exec sql set :lResponse = systools.base64encode(cast(trim(:wAuthUser)
038860201202                               concat ':' concat trim(:wAuthpwd)
038861201202                                 as varchar(64) ccsid 1208));
038862201202 EndIf;
038863200110
038864200110  // Wegschrijven huidig AuthenticationTicket
038865200110  exec sql Merge into WSCLAUTHTK
038866200110    using (values(:wEnv, :wWebService, :lResponse))
038867200110        as val(pAuthEnv, pWebService, pAuthTick)
038868200110      on AuthEnv=pAuthEnv  and WebService=pWebService
038869200110   When matched then update set AuthTicket = pAuthTick,
038870200110                                AuthTmStmp = current_timestamp
038871200110   When Not matched then insert values(pAuthEnv, pWebService,
038872200110                            pAuthTick, current_timestamp);
038873200110
038874200110  // Cleanup handle.
038875200110  axiscTransportDestroy(lHandle);
038876200113  wUri = lURIsv ;
038877200110
038878200110  wRequestType = lRequestType;
038879200316  IFSFullPath  = lIFSFullPath;
038880200110End-Proc;
038881200110// ------------------------------------------------------------------------------------------------
038882200110Dcl-Proc GetAuthTicket;
038883200110Dcl-Pi *N;
038884200123  iAutTicket varchar(3000);
038885200110END-PI;
038886200211Dcl-s lAutTicket char(3000);
038887200110
038888200110exec sql Values(Select AuthTicket from WSCLAUTHTK
038889200110                   where AuthEnv=:wEnv and WebService=:wWebService
038890200211            ) into :lAutTicket:wNull;
038891200316// wanneer geen record gevonden wordt lAutTicket soms toch opgevuld ...
038892200316// Test op wNull !
038893200316If wNull=-1;
038894200316  clear lAutTicket;
038895200316ENDIF;
038896200211
038897200211iAutTicket=%Trim(lAutTicket);
038898200110
038899200110End-Proc;
038900191122// ------------------------------------------------------------------------------------------------
039000191122Dcl-Proc WS_ProcessRequest Export;
039100191122Dcl-Pi *N Char(30000) ;
039101191122 iWebService char(10) const;
039200210326 iAction varchar(512) const;
039300201208 iRequest_data char(1000000) const options(*omit:*nopass);
039400191122 iProcPtr Pointer(*Proc) const options(*omit:*nopass);
039500191122 oIFSReqResp varchar(128) options(*omit:*nopass);
039700210127 iKeyInfo char(20) const options(*omit:*nopass);
039701210127 iEnv char(3) const options(*nopass);
039800191122END-PI;
039900191122
040100191122Dcl-s AuthTestOK Ind;
040200191122Dcl-s RetryCnt uns(5);
040300210312Dcl-s Response SQLTYPE(CLOB:10000000);
040400191122Dcl-s lPos uns(10);
040500191122Dcl-s lKeyInfo char(20);
040501201208Dcl-s lData char(1000000);
040502200211Dcl-s lDataSh char(100);
040503200114Dcl-s lTmst Timestamp;
040504200124Dcl-s lAction varchar(128);
040505210312Dcl-s lRespAut varchar(1000);
040506210312
040507200211If %Parms>=%ParmNum(iRequest_data) and %Addr(iRequest_data)<>*Null;
040508200211  lData = iRequest_data;
040509200211EndIf;
040510200211lDataSh = lData;
040511200124Clear dsCallLog;
040600191122
041100210127If %Parms>=%ParmNum(iKeyInfo) and %Addr(iKeyInfo)<>*Null and iKeyInfo<>*Blanks;
041200191122  lKeyInfo = iKeyInfo;
041300191122EndIf;
041301210127reset wEnv;
041302210127If %Parms>=%ParmNum(iEnv) and iEnv<>*Blanks;
041303210127  wEnv=iEnv;
041304210127EndIf;
041305200110wWebService = iWebService;
041306200124
041307200124wscEnv = wEnv;
041308200124wscService = wWebService;
041400191122
041401191122// Webservice variabelen ophalen
041402200110dsPagegev=Pagegev_Lezen('WSCALLURI':'':'':iWebService);
041403200110wURI = %Trim(gWawa1pag) + %Trim(gWawa2pag) + %Trim(gWawa3pag)
041404210119      + %Trim(gWawa4pag) + %Trim(gWawa5pag) + iAction ;
041405200113wAuthURI = %Trim(gWawa1pag) + %Trim(gWawa2pag) + %Trim(gWawa3pag)
041406200113      + %Trim(gWawa4pag) + %Trim(gWawa5pag);
041407200110dsPagegev=Pagegev_Lezen('WSCALL':'':'':iWebService);
041408200113wContentformat = %Trim(gWawa1pag);
041409210216exec sql set :wExtentie = regexp_substr(:wContentFormat, '[^/;]*(?=(\s+|$|;))');
041410200110reset wRequestType;
041411200110If gWawa2pag<>*Blanks;
041412200113  wRequestType = %Trim(gWawa2pag);
041413200110EndIf;
041414200110wIFSPathWS = %Trim(gWawa3pag) + %Trim(gWawa4pag);
041415191122If wIFSPathWS=*Blanks;
041416191122  wIFSPathWS = '/tmp';
041417191122EndIf;
041418200110dsPagegev=Pagegev_Lezen('WSCALLAUTH':'':'':iWebService);
041419200113wAuthUser = %Trim(gWawa1Pag);
041420200124wEncrPwd  = %Trim(gWawa2Pag);
041421200124// get Authentication password from WSCLAUTHPW
041423200124exec sql set encryption password :wEncrPwd;
041424200124exec sql Values(Select decrypt_char(AuthPw) from WSCLAUTHPW
041425200124                 where AuthEnv=:wEnv and Webservice=:wWebService
041426200124                   and AuthUser=:wAuthUser) into :wAuthPwd:wNull;
041427200124
041428201126//wApplKey  = %Trim(gwawa3pag) + %Trim(gwawa4pag);
041429201126wAuthPrefix = %Trim(gwawa3pag);
041430200110wAuthService= %Trim(gwawa5pag);
041431200113wAuthUri = %Trim(wAuthUri) + %Trim(gwawa5pag);
041432191122
041433191220Clear wSoapAction;
041434200211exec sql set :lPos = regexp_instr(:lDataSh, 'soap',  1, 1, 0, 'i');
041435191220If lPos<>0;
041436191220  wSoapAction=iAction;
041437191220Endif;
041438200114
041439200114exec sql set :lTmst = now();
041440200124wscTmst = lTmst;
041441200124wscUri  = wUri;
041442200124
041443200124clear IFSFullPath;
041444200124// enkel tekens na laatste "/" behouden
041445200124exec sql set :lAction = regexp_substr(:iAction, '[^/]+($|\s)');
041446200124// niet \w vervangen door "_"
041447200124exec sql set :lAction = regexp_replace(:lAction, '\W+', '_');
041448200124IFSFullPath = wIFSPathWS + '/Requests/' + %Trim(lAction) + '_'
041449200114                    + %Char(lTmst:*ISO0) + '.' + wExtentie ;
041452200114
041500191122Dou AuthTestOk;
041600191122  exec sql set :wChkTmst = now();
041700191125  tHandle = WS_Connect();
041800191122  CheckDuration(wChkTmst:lKeyInfo:'Connect');
041900200211  If wRequestType='GET' or WS_SendRequest(iAction:lData);
041902200527      If wRequestType<>'GET';
041903200527        wscRequ=IFSFullPath;
041904200527      EndIf;
042100191122      If %Parms>=%ParmNum(oIFSReqResp) and %Addr(oIFSReqResp)<>*Null;
042200191122        // Bestandsnaam (Request/Response) : Meerdere Niet "/" aan einde string
042300191122        exec sql set :oIFSReqResp = regexp_substr(:IFSFullPath, '[^/]+$');
042400191122      ENDIF;
042500191122      If %Parms>=%ParmNum(iProcPtr) and %Addr(iProcPtr)<>*Null and iProcPtr<>*Null;
042600210312        response_data = WS_flushAndReceiveData(iProcPtr:*omit:lKeyInfo);
042700191122      Else;
042800210312        response_data = WS_flushAndReceiveData(*omit:*omit:lKeyInfo);
042900191122      EndIf;
043000191122      CheckDuration(wChkTmst:lKeyInfo:'FlushAndReceive');
043100191122      RetryCnt += 1;
043200191122      // Not Authorized then get new AuthorizationTicked
043201210312      lRespAut = response_data;
043300210312      exec sql set :lPos = regexp_instr(:lRespAut, 'Unauthorized',  1, 1, 0, 'i');
043400191122      If lPos=0 or RetryCnt>3;
043500191122        AuthTestOk=*On;
043600191122      Else;
043700200110        WS_ReqAuthTicket();
043701200318        // Work with new unique streamfile (When GET --> no request)
043702200318        If wRequestType='GET';
043703200318          exec sql set :lTmst = now();
043704200318          wscTmst = lTmst;
043706200318          IFSFullPath = wIFSPathWS + '/Requests/' + %Trim(lAction) + '_'
043707200318                    + %Char(lTmst:*ISO0) + '.' + wExtentie ;
043708200318        ENDIF;
043900191122      EndIf;
044000191122  Endif;
044100191122EndDo;
044200191122
044300191122// Cleanup handle.
044400191122axiscTransportDestroy(tHandle);
044401200124
044402200124// Error ?
044404200124exec sql set :lPos = regexp_instr(:response, 'Error',  1, 1, 0, 'i');
044405200124If lPos>0;
044406210312  wscError = Response_data;
044408200124ENDIF;
044409200124
044410200124
044411200124// Save log
044412200124exec sql Insert into WSCALLLOG values(:dsCallLog);
044500191122
044600210312return Response_data;
044700191122
044800191122END-PROC;
044900191122// ------------------------------------------------------------------------------------------------
045000191122Dcl-Proc CheckDuration;
045100191122Dcl-Pi *N;
045200191122 iTmst Timestamp;
045300191122 iKey char(20) const;
045400191122 iAction char(20) const;
045500191122End-Pi;
045600191122
045700191122Dcl-s lTmst Timestamp;
045800191122
045900191122If iKey<>*Blanks;
046000191122  exec sql set :lTmst = now();
046100191122  // Check duration
046200191122  If %Diff(lTmst:iTmst:*Seconds)>5;
046300200110    //exec sql Insert into LOGADDSHIP values(:iKey, :iAction, :iTmst);
046400200110    //exec sql Insert into LOGADDSHIP values(:iKey, :iAction, :lTmst);
046500191122  EndIf;
046600191122EndIf;
046700191122
046800191122End-Proc CheckDuration;
046801201002// ------------------------------------------------------------------------------------------------
046802201002Dcl-Proc AddApiHeaders;
046803201002Dcl-Pi *N;
046804201002  iHandle Pointer Const;
046805201002End-Pi;
046806201002
046807201002Dcl-s lKey char(64);
046808210216Dcl-s lVal char(3000);
046809210217Dcl-s lTyp Int(10);
046810201002
046811201002  // Check if additional headers need to be added
046812201002  exec sql Declare cs_Hdr asensitive scroll cursor with hold for
046813210217    Select HdrTyp, HdrKey, HdrVal from WSCLApiHdr
046815201002      where ApiEnv=:wEnv and webservice=:wWebservice;
046816201002  exec sql Open cs_Hdr;
046818210217  exec sql Fetch first from cs_Hdr into :lTyp:wNull, :lKey:wNull, :lVal:wNull;
046819201002  Dow SqlStt<'02';
046820201002
046821201002    propBuf  = %Trim(lKey) + X'00';
046822201002    propBuf2 = %Trim(lVal) + X'00';
046823210217    If lTyp<>0;
046824210217      If lVal<>*Blanks;
046825210217        axiscTransportSetProperty(iHandle: lTyp:
046826210217                              %addr(propBuf):%addr(propBuf2));
046827210217      Else;
046828210217        axiscTransportSetProperty(iHandle: lTyp:%addr(propBuf));
046829210217      EndIf;
046830210217    Else;
046831201002    axiscTransportSetProperty(iHandle: AXISC_PROPERTY_HTTP_HEADER:
046832201002                              %addr(propBuf):%addr(propBuf2));
046833210217    EndIf;
046834210217
046835210217    exec sql Fetch next from cs_Hdr into :lTyp:wNull, :lKey:wNull, :lVal:wNull;
046838201002  EndDo;
046839201002  exec sql close cs_Hdr;
046840201002
046841201002End-Proc;
046842201002// ------------------------------------------------------------------------------------------------
