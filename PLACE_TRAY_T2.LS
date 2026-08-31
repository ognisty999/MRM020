/PROG  PLACE_TRAY_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 364;
CREATE		= DATE 25-07-16  TIME 18:24:34;
MODIFIED	= DATE 26-03-05  TIME 14:13:46;
FILE_NAME	= PLACE_TR;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 832;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  IF (!F[12:ON :# T2 detail]),JMP LBL[10] ;
   2:  UTOOL_NUM=2 ;
   3:  UFRAME_NUM=1 ;
   4:   ;
   5:J PR[R[52]] 40% CNT20 Tool_Offset,PR[92:#Tof tr apr (f] ACC40    ;
   6:L PR[R[52]] 400mm/sec FINE Tool_Offset,PR[88:Tof tray place]    ;
   7:   ;
   8:  CALL DROP_T2    ;
   9:   ;
  10:L PR[R[52]] 400mm/sec CNT20 Tool_Offset,PR[91:#Tof tr apr (e]    ;
  11:  LBL[10:T2 no det skip] ;
/POS
/END
