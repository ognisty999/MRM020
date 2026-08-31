/PROG  PICK_TRAY_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 392;
CREATE		= DATE 25-07-16  TIME 18:25:26;
MODIFIED	= DATE 26-03-05  TIME 14:36:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 844;
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
   1:  LBL[1:T1 check] ;
   2:  IF (F[11:OFF:# T1 detail]) THEN ;
   3:  UALM[6] ;
   4:  JMP LBL[1] ;
   5:  ENDIF ;
   6:  UTOOL_NUM=1 ;
   7:  UFRAME_NUM=1 ;
   8:   ;
   9:J PR[R[51]] 40% CNT20 Tool_Offset,PR[91:#Tof tr apr (e] ACC40    ;
  10:   ;
  11:  CALL PICK_UP_RDY_T1    ;
  12:   ;
  13:L PR[R[51]] 400mm/sec FINE Tool_Offset,PR[89:Tof tray pick]    ;
  14:   ;
  15:  CALL PICK_UP_T1    ;
  16:   ;
  17:L PR[R[51]] 400mm/sec CNT20 Tool_Offset,PR[92:#Tof tr apr (f]    ;
/POS
/END
