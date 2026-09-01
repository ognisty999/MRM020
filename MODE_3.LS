/PROG  MODE_3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 602;
CREATE		= DATE 25-12-09  TIME 13:27:02;
MODIFIED	= DATE 26-03-27  TIME 09:49:10;
FILE_NAME	= MODE_1;
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
   1:  !(if)tr# T2place > vi1 T2pick ;
   2:  !cycle ends with det in gr ;
   3:   ;
   4:  IF (!F[12:OFF:# T2 detail]),JMP LBL[1] ;
   5:  IF (R[21:# row]=R[23:row to start] AND R[22:# col]=R[24:col to start]),CALL GO_TABLE_T2 ;
   6:   ;
   7:  CALL PLACE_TRAY_T2    ;
   8:  CALL GO_TABLE_T2    ;
   9:   ;
  10:  LBL[1:tr place skip] ;
  11:   ;
  12:  CALL GO_IN_LATHE_T2    ;
  13:  CALL BLOW_CIRCLE(41,1,2,R[9:bl/pick rad adj]) ;
  14:  CALL PICK_VICE1_T2    ;
  15:  CALL BLOW_CIRCLE(41,0,2,R[9:bl/pick rad adj]) ;
  16:  CALL GO_OUT_LATHE_T2    ;
  17:   ;
  18:  LBL[10:skip] ;
/POS
/END
