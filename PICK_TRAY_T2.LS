/PROG  PICK_TRAY_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 434;
CREATE		= DATE 25-07-16  TIME 18:25:40;
MODIFIED	= DATE 26-03-05  TIME 14:36:52;
FILE_NAME	= PICK_TRA;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 886;
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
   1:  LBL[1:T2 check] ;
   2:  IF (F[12:ON :# T2 detail]) THEN ;
   3:  UALM[6] ;
   4:  JMP LBL[1] ;
   5:  ENDIF ;
   6:  UTOOL_NUM=2 ;
   7:  UFRAME_NUM=1 ;
   8:   ;
   9:J PR[R[52]] 40% CNT20 Tool_Offset,PR[91:#Tof tr apr (e] ACC40    ;
  10:   ;
  11:  CALL PICK_UP_RDY_T2    ;
  12:   ;
  13:L PR[R[52]] 400mm/sec FINE Tool_Offset,PR[89:Tof tray pick]    ;
  14:   ;
  15:  CALL PICK_UP_T2    ;
  16:   ;
  17:L PR[R[52]] 400mm/sec CNT20 Tool_Offset,PR[92:#Tof tr apr (f]    ;
/POS
/END
