/PROG  TEACH_VICE2_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 374;
CREATE		= DATE 26-03-04  TIME 12:52:54;
MODIFIED	= DATE 26-05-07  TIME 09:38:06;
FILE_NAME	= TEACH_VI;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 698;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=8 ;
   3:   ;
   4:J PR[33:# vice2 T1/U8] 50% FINE Tool_Offset,PR[95:#Tof vi2 apr (]    ;
   5:  PAUSE ;
   6:   ;
   7:  !T1 touch up > start here ;
   8:L PR[33:# vice2 T1/U8] 100mm/sec FINE    ;
   9:  !^^^^^^^^^^^^^ ;
  10:   ;
  11:L PR[33:# vice2 T1/U8] 500mm/sec CNT20 Tool_Offset,PR[95:#Tof vi2 apr (]    ;
  12:  !> skip V2 T1 ;
/POS
/END
