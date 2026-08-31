/PROG  MODE_2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 808;
CREATE		= DATE 25-12-09  TIME 13:27:26;
MODIFIED	= DATE 26-03-27  TIME 09:48:18;
FILE_NAME	= MODE_1;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1256;
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
   1:  !tr# T1pick > vi1 T2pick > ;
   2:  !vi1 T1place > tr# T2place ;
   3:  !no det allowed in gr at start ;
   4:   ;
   5:  IF (R[21:# row]=R[23:row to start] AND R[22:# col]=R[24:col to start]) THEN ;
   6:  LBL[1:T1/T2 check] ;
   7:  IF (F[11:OFF:# T1 detail] OR F[12:ON :# T2 detail]) THEN ;
   8:  UALM[6] ;
   9:  JMP LBL[1] ;
  10:  ENDIF ;
  11:  CALL GO_TABLE_T1    ;
  12:  ENDIF ;
  13:   ;
  14:  CALL PICK_TRAY_T1    ;
  15:  CALL GO_TABLE_T1    ;
  16:   ;
  17:  IF (F[2:OFF:# pick up err]),JMP LBL[10] ;
  18:   ;
  19:  CALL GO_IN_LATHE_T1    ;
  20:  CALL BLOW_CIRCLE(41,1,2,R[9:bl/pick rad adj]) ;
  21:  CALL PICK_VICE1_T2    ;
  22:  CALL BLOW_CIRCLE(41,0,2,R[9:bl/pick rad adj]) ;
  23:  CALL PLACE_VICE1_T1    ;
  24:  CALL GO_OUT_LATHE_T2    ;
  25:   ;
  26:  IF (F[2:OFF:# pick up err]),JMP LBL[10] ;
  27:   ;
  28:  CALL PLACE_TRAY_T2    ;
  29:   ;
  30:  LBL[10:skip] ;
/POS
/END
