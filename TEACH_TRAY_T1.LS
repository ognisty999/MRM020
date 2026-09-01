/PROG  TEACH_TRAY_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 540;
CREATE		= DATE 26-03-04  TIME 13:00:10;
MODIFIED	= DATE 26-08-31  TIME 20:42:40;
FILE_NAME	= TEACH_TR;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 832;
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
   4:J PR[R[51]] 40% CNT20 Tool_Offset,PR[92:#Tof tr apr (f]    ;
   5:L PR[R[51]] 400mm/sec FINE Tool_Offset,PR[90:Tof above tray]    ;
   6:  OVERRIDE=1% ;
   7:  PAUSE ;
   8:   ;
   9:  !T1 touch up > start here ;
  10:  OVERRIDE=2% ;
  11:L PR[R[51]] 100mm/sec FINE    ;
  12:  !^^^^^^^^^^^^^ ;
  13:   ;
  14:  RO[4:OFF:close T1]=ON ;
  15:  WAIT   1.00(sec) ;
  16:  RO[4:OFF:close T1]=OFF ;
  17:   ;
  18:L PR[R[51]] 400mm/sec CNT20 Tool_Offset,PR[91:#Tof tr apr (e]    ;
  19:  !> skip tray T1 ;
  20:  END ;
  21:  !> skip this pos in cycle ;
  22:  CALL RESET_PR(R[51:# tray T1/U1]) ;
/POS
/END
