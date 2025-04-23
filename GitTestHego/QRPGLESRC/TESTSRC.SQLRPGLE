       Ctl-Opt Main(Test) option(*nodebugio:*srcstmt:*NoShowCpy)
               ActGrp(*Caller)
               //  Bnddir('XFSRV') xxx
               DatFmt(*Iso);

       Dcl-Proc Test;
         Dcl-s lfound Ind;
         Dcl-s val char(10);
         Dcl-s char20 char(20);

         char20 = %Subst(%char(%Timestamp(*Unique):*ISO0):9);


         lFound = ('xxxx' in %List('yyy':'xxxx'));
         For-each val in %list('yyy':'xxx');
           dsply val;
         EndFor;

       End-Proc;
