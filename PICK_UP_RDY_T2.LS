/PROG  PICK_UP_RDY_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 432;
CREATE		= DATE 25-07-25  TIME 14:38:20;
MODIFIED	= DATE 25-12-17  TIME 11:47:46;
FILE_NAME	= PICK_UP_;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 872;
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
   1:  IF R[15:grip in1 / out2]=0,JMP LBL[10] ;
   2:  LBL[1:check grip mode] ;
   3:   ;
   4:  IF (R[15:grip in1 / out2]=1) THEN ;
   5:  WAIT RI[2:OFF:T2 closed]=ON    ;
   6:   ;
   7:  ELSE ;
   8:  IF (R[15:grip in1 / out2]=2) THEN ;
   9:  WAIT RI[1:OFF:T2 opened]=ON    ;
  10:   ;
  11:  ELSE ;
  12:  UALM[10] ;
  13:  JMP LBL[1] ;
  14:  ENDIF ;
  15:  ENDIF ;
  16:  LBL[10:skip] ;
/POS
/END
