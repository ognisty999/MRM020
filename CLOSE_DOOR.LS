/PROG  CLOSE_DOOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "start cnc";
PROG_SIZE	= 486;
CREATE		= DATE 25-07-16  TIME 18:26:32;
MODIFIED	= DATE 26-03-09  TIME 14:31:48;
FILE_NAME	= OPEN_DOO;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 802;
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
   1:  IF DI[6:OFF:door locked]=ON,CALL DOOR_ERR ;
   2:   ;
   3:  WAIT DI[5:OFF:door opened]=ON    ;
   4:   ;
   5:  UTOOL_NUM=3 ;
   6:  UFRAME_NUM=0 ;
   7:   ;
   8:L PR[10:@ door opened T3] 2000mm/sec CNT10 Tool_Offset,PR[81:Tof door apr]    ;
   9:L PR[10:@ door opened T3] 500mm/sec CNT0    ;
  10:   ;
  11:  MONITOR END DOOR_OP_COND ;
  12:   ;
  13:L PR[9:@ door closed T3] 250mm/sec CNT0 Tool_Offset,PR[82:Tof d push cl] ACC10    ;
  14:L PR[9:@ door closed T3] 100mm/sec FINE ACC10    ;
  15:   ;
  16:  WAIT DI[8:OFF:door closed]=ON    ;
  17:  WAIT DI[6:OFF:door locked]=ON    ;
  18:  RUN START_CNC ;
  19:   ;
  20:L PR[9:@ door closed T3] 500mm/sec CNT10 Tool_Offset,PR[81:Tof door apr]    ;
/POS
/END
