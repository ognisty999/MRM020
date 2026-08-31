/PROG  TEACH_TRAY_1_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 402;
CREATE		= DATE 26-03-04  TIME 12:57:22;
MODIFIED	= DATE 26-05-07  TIME 09:29:10;
FILE_NAME	= TEACH_TR;
VERSION		= 0;
LINE_COUNT	= 13;
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
/APPL
/MN
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=1 ;
   3:   ;
   4:J PR[7:# tray 1 T1/U1] 40% FINE Tool_Offset,PR[92:#Tof tr apr (f]    ;
   5:  //L PR[7:# tray 1 T1/U1] 400mm/sec FINE Tool_Offset,PR[90:Tof above tray]    ;
   6:  PAUSE ;
   7:   ;
   8:  !T1 touch up > start here ;
   9:L PR[7:# tray 1 T1/U1] 100mm/sec FINE    ;
  10:  !^^^^^^^^^^^^^ ;
  11:   ;
  12:L PR[7:# tray 1 T1/U1] 400mm/sec CNT20 Tool_Offset,PR[91:#Tof tr apr (e]    ;
  13:  !> skip tray 1 T1 ;
/POS
/END
