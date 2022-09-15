000100220905       Ctl-Opt Main(Test) option(*nodebugio:*srcstmt:*NoShowCpy)
000200220908               ActGrp(*Caller)
000300220915               //   Bnddir('XFSRV')
000400220905               DatFmt(*Iso);
000500220908
000600220908       Dcl-Proc Test;
000700220908         Dcl-s lfound Ind;
000800220908         Dcl-s val char(10);
000900220913         Dcl-s char20 char(20);
001000220913
001100220913         char20 = %Subst(%char(%Timestamp(*Unique):*ISO0):9);
001101220913
001200220908
001300220908         lFound = ('xxxx' in %List('yyy':'xxxx'));
001400220908         For-each val in %list('yyy':'xxx');
001500220908           dsply val;
001600220908         EndFor;
001700220908
001800220908       End-Proc;
