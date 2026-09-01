/PROG  PICK_UP_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 726;
CREATE		= DATE 25-07-07  TIME 19:47:06;
MODIFIED	= DATE 25-12-17  TIME 11:49:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1238;
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
   4:  IF (R[15:grip in1 / out2]=1) THEN ;
   5:  CALL OPEN_T2    ;
   6:  WAIT RI[2:OFF:T2 closed]=OFF-    ;
   7:  WAIT    .50(sec) ;
   8:  IF (RI[1:OFF:T2 opened] OR RI[2:OFF:T2 closed]) THEN ;
   9:  F[2:OFF:# pick up err]=(ON) ;
  10:  CALL CLOSE_T2    ;
  11:  WAIT RI[2:OFF:T2 closed]=ON    ;
  12:  ELSE ;
  13:  F[12:OFF:# T2 detail]=(ON) ;
  14:  MONITOR T2_GRIP_COND ;
  15:  ENDIF ;
  16:   ;
  17:  ELSE ;
  18:  IF (R[15:grip in1 / out2]=2) THEN ;
  19:  CALL CLOSE_T2    ;
  20:  WAIT RI[1:OFF:T2 opened]=OFF-    ;
  21:  WAIT    .50(sec) ;
  22:  IF (RI[1:OFF:T2 opened] OR RI[2:OFF:T2 closed]) THEN ;
  23:  F[2:OFF:# pick up err]=(ON) ;
  24:  CALL OPEN_T2    ;
  25:  WAIT RI[1:OFF:T2 opened]=ON    ;
  26:  ELSE ;
  27:  F[12:OFF:# T2 detail]=(ON) ;
  28:  MONITOR T2_GRIP_COND ;
  29:  ENDIF ;
  30:   ;
  31:  ELSE ;
  32:  UALM[10] ;
  33:  JMP LBL[1] ;
  34:  ENDIF ;
  35:  ENDIF ;
  36:  LBL[10:skip] ;
/POS
/END
