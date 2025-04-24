Ctl-Opt Debug Option(*nodebugio:*srcstmt:*noshowcpy) ALWNULL(*USRCTL) DATFMT(*ISO)
              DftActGrp(*no) ActGrp(*new) Main(main) Bnddir('ACLVBBND');    

/include QCpylesrc,ALGSRVPT  

exec sql set option commit=*CHG;                              
exec sql set transaction isolation level READ UNCOMMITTED,    
                                        READ WRITE;           

Dcl-Proc Main;
Dcl-Pi *N;
    iNu char(26) const;
end-pi;

Dcl-S bericht char(32000) ;
Dcl-S verwerkt char(1) ;
Dcl-S SqlError char(1) inz('N') ;

runCmd('STRCMTCTL LCKLVL(*CHG) CMTSCOPE(*ACTGRP)'); 

Exec sql                                                     
Select MSG,verwerkt into :bericht,:verwerkt from minsynclog  
  where NU = timestamp(:nu) ;                                
  IF SQLSTT <> '00000';                                      
    dsply ('SYNC_VORST:' + nu + ' niet gevonden!') 'HENDRIK'; 
    return;                                                  
  ENDIF;         
  
  if (verwerkt = 'Y');                                      
   dsply ('SYNC_VORST:' + nu + ' al verwerkt!') 'HENDRIK'; 
   return;                                                
endif;     

// Update LVK2REP with the new Vorst data
exec sql Merge into LVK2REP as t 
  using (select * from json_table(:bericht, '$.vorstzones[*]'
    columns (vorstzone char(10) PATH 'lax $.zone',
            vanaf char(10) PATH 'lax $.vanaf',
            tot char(10) PATH 'lax $.tot', 
            COMMENT varchar(256) PATH 'lax $.comment'))) AS u
  on (t.k2kndd = int(replace(u.vanaf, '-', '')) and t.k2k201 = u.vorstzone)
  when matched then update set t.k2kodd = int(replace(u.tot, '-', '')),
                              t.k2i9tx = u.comment,
                              t.k2k202 = 0,
                              t.k2c8nm = int(replace(u.vanaf, '-', '')),
                              t.k2c9nm = int(replace(u.tot, '-', '')),
  when not matched then insert 
    values (int(replace(u.vanaf, '-', '')), int(replace(u.tot, '-', '')), u.vorstzone, 0,
            u.comment, int(replace(u.vanaf, '-', '')), int(replace(u.tot, '-', '')));

if sqlstate > '02';
    sqlError='Y';
    exec sql get diagnostics exception 1
        :sqlMsg = message_text;
    dsply ('SQLSTATE: ' + sqlstate + ' SQLCODE: ' + sqlcode + ' SQLERR: ' + sqlMsg) 'HENDRIK';
    exec sql rollback;
    return;
endif

// Update LVK2REP met aantal vorstdagen
exec sql update LVK2REP set k2k202 = get#Werkdagen(K2KNDD, K2KODD) where k2k202 = 0;

if sqlError='N';
    exec sql update minsynclog set verwerkt = 'Y' where nu = timestamp(:nu);
    exec sql commit;
endif;

End-Proc;