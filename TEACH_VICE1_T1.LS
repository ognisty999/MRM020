/PROG  TEACH_VICE1_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 374;
CREATE		= DATE 26-03-04  TIME 12:50:22;
MODIFIED	= DATE 26-04-30  TIME 14:14:26;
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
   2:  UFRAME_NUM=6 ;
   3:   ;
   4:J PR[31:# vice1 T1/U6] 50% FINE Tool_Offset,PR[94:#Tof vi1 apr (]    ;
   5:  PAUSE ;
   6:   ;
   7:  !T1 touch up > start here ;
   8:L PR[31:# vice1 T1/U6] 100mm/sec FINE    ;
   9:  !^^^^^^^^^^^^^ ;
  10:   ;
  11:L PR[31:# vice1 T1/U6] 500mm/sec CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
  12:  !> skip V1 T1 ;
/POS
/END
