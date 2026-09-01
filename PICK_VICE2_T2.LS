/PROG  PICK_VICE2_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 568;
CREATE		= DATE 25-06-03  TIME 16:56:56;
MODIFIED	= DATE 26-03-05  TIME 14:43:18;
FILE_NAME	= PICK_VIC;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 988;
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
   2:  IF (F[12:OFF:# T2 detail]) THEN ;
   3:  UALM[6] ;
   4:  JMP LBL[1] ;
   5:  ENDIF ;
   6:  IF DI[14:OFF:vice2 detail]=OFF,JMP LBL[10] ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=9 ;
   9:   ;
  10:J PR[34:# vice2 T2/U9] 50% CNT20 Tool_Offset,PR[96:#Tof vi apr (e]    ;
  11:   ;
  12:  //WAIT DI[14:OFF:vice2 detail]=ON    ;
  13:  CALL PICK_UP_RDY_T2    ;
  14:   ;
  15:L PR[34:# vice2 T2/U9] 500mm/sec FINE    ;
  16:   ;
  17:  WAIT DO[5:OFF:close vice2]=OFF    ;
  18:  DO[4:OFF:open vice2]=PULSE,2.0sec ;
  19:  WAIT DO[4:OFF:open vice2]=OFF-    ;
  20:  CALL PICK_UP_T2    ;
  21:   ;
  22:L PR[34:# vice2 T2/U9] 500mm/sec CNT20 Tool_Offset,PR[95:#Tof vi2 apr (]    ;
  23:  END ;
  24:  LBL[10:v2 no det skip] ;
  25:  F[2:OFF:# pick up err]=(ON) ;
/POS
/END
