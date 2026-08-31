/PROG  OPEN_DOOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 402;
CREATE		= DATE 25-05-14  TIME 14:22:46;
MODIFIED	= DATE 26-03-10  TIME 12:47:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 722;
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
   1:  WAIT (!F[3:OFF:# starting cnc])    ;
   2:  WAIT DI[7:ON :cnc cycle off]=ON AND DI[6:OFF:door locked]=OFF AND DI[8:OFF:door closed]=ON AND DI[11:OFF:cnc warning]=OFF AND DI[12:OFF:cnc error]=OFF    ;
   3:   ;
   4:  UTOOL_NUM=3 ;
   5:  UFRAME_NUM=0 ;
   6:   ;
   7:L PR[9:@ door closed T3] 2000mm/sec CNT10 Tool_Offset,PR[81:Tof door apr]    ;
   8:L PR[9:@ door closed T3] 500mm/sec CNT0    ;
   9:L PR[10:@ door opened T3] 250mm/sec CNT0 Tool_Offset,PR[83:Tof d push op] ACC10    ;
  10:L PR[10:@ door opened T3] 100mm/sec FINE ACC10    ;
  11:   ;
  12:  WAIT DI[5:OFF:door opened]=ON    ;
  13:  MONITOR DOOR_OP_COND ;
  14:   ;
  15:L PR[10:@ door opened T3] 500mm/sec CNT10 Tool_Offset,PR[81:Tof door apr]    ;
/POS
/END
