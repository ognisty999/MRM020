/PROG  DROP_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 452;
CREATE		= DATE 25-07-07  TIME 19:46:38;
MODIFIED	= DATE 25-12-17  TIME 11:31:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 900;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  IF R[15:grip in1 / out2]=0,JMP LBL[10] ;
   2:  LBL[1:check grip mode] ;
   3:   ;
   4:  MONITOR END T1_GRIP_COND ;
   5:   ;
   6:  IF (R[15:grip in1 / out2]=1) THEN ;
   7:  CALL CLOSE_T1    ;
   8:  WAIT RI[4:OFF:T1 closed]=ON    ;
   9:   ;
  10:  ELSE ;
  11:  IF (R[15:grip in1 / out2]=2) THEN ;
  12:  CALL OPEN_T1    ;
  13:  WAIT RI[3:ON :T1 opened]=ON    ;
  14:   ;
  15:  ELSE ;
  16:  UALM[10] ;
  17:  JMP LBL[1] ;
  18:  ENDIF ;
  19:  ENDIF ;
  20:  LBL[10:skip] ;
/POS
/END
