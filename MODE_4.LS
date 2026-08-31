/PROG  MODE_4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 602;
CREATE		= DATE 26-03-16  TIME 16:13:16;
MODIFIED	= DATE 26-03-27  TIME 09:49:30;
FILE_NAME	= MODE_3;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1082;
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
   1:  !(if)tr# T1place > vi2 T1pick ;
   2:  !cycle ends with det in gr ;
   3:   ;
   4:  IF (!F[11:OFF:# T1 detail]),JMP LBL[1] ;
   5:  IF (R[21:# row]=R[23:row to start] AND R[22:# col]=R[24:col to start]),CALL GO_TABLE_T1 ;
   6:   ;
   7:  CALL PLACE_TRAY_T1    ;
   8:  CALL GO_TABLE_T1    ;
   9:   ;
  10:  LBL[1:tr place skip] ;
  11:   ;
  12:  CALL GO_IN_LATHE_T1    ;
  13:  CALL BLOW_CIRCLE(42,1,2,R[9:bl/pick rad adj]) ;
  14:  CALL PICK_VICE2_T1    ;
  15:  CALL BLOW_CIRCLE(42,0,2,R[9:bl/pick rad adj]) ;
  16:  CALL GO_OUT_LATHE_T1    ;
  17:   ;
  18:  LBL[10:skip] ;
/POS
/END
