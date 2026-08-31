/PROG  TEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 402;
CREATE		= DATE 25-05-06  TIME 11:38:24;
MODIFIED	= DATE 26-05-07  TIME 09:22:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 714;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:J PR[3:@ ref vice2 T1] 20% CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
   4:L PR[3:@ ref vice2 T1] 800mm/sec FINE    ;
   5:L PR[3:@ ref vice2 T1] 800mm/sec CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
   6:   ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=0 ;
   9:J PR[4:@ ref vice2 T2] 20% CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
  10:L PR[4:@ ref vice2 T2] 800mm/sec FINE    ;
  11:L PR[4:@ ref vice2 T2] 800mm/sec CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
  12:   ;
  13:  CALL BLOW_VI(42,1,2) ;
  14:   ;
  15:  UTOOL_NUM=1 ;
  16:  UFRAME_NUM=1 ;
  17:J PR[5:@ ref tr 1 T1/U1] 100% FINE    ;
/POS
/END
