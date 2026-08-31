/PROG  PICK_UP_RDY_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 378;
CREATE		= DATE 25-07-25  TIME 14:36:38;
MODIFIED	= DATE 25-12-17  TIME 11:47:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 818;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  IF R[15:grip in1 / out2]=0,JMP LBL[10] ;
   2:  LBL[1:check grip mode] ;
   3:   ;
   4:  IF (R[15:grip in1 / out2]=1) THEN ;
   5:  WAIT RI[4:OFF:T1 closed]=ON    ;
   6:   ;
   7:  ELSE ;
   8:  IF (R[15:grip in1 / out2]=2) THEN ;
   9:  WAIT RI[3:ON :T1 opened]=ON    ;
  10:   ;
  11:  ELSE ;
  12:  UALM[10] ;
  13:  JMP LBL[1] ;
  14:  ENDIF ;
  15:  ENDIF ;
  16:  LBL[10:skip] ;
/POS
/END
