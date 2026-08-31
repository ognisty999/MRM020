/PROG  TEACH_VICE1_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 382;
CREATE		= DATE 26-03-04  TIME 12:51:16;
MODIFIED	= DATE 26-05-07  TIME 09:36:32;
FILE_NAME	= PLACE_VI;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 706;
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
   1:  UTOOL_NUM=2 ;
   2:  UFRAME_NUM=7 ;
   3:   ;
   4:J PR[32:# vice1 T2/U7] 50% FINE Tool_Offset,PR[94:#Tof vi1 apr (]    ;
   5:  PAUSE ;
   6:   ;
   7:  !T2 touch up > start here ;
   8:L PR[32:# vice1 T2/U7] 100mm/sec FINE    ;
   9:  !^^^^^^^^^^^^^ ;
  10:   ;
  11:L PR[32:# vice1 T2/U7] 500mm/sec CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
  12:  !> skip V1 T2 ;
/POS
/END
