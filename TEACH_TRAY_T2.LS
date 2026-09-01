/PROG  TEACH_TRAY_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 544;
CREATE		= DATE 26-03-04  TIME 13:03:06;
MODIFIED	= DATE 26-08-31  TIME 20:43:24;
FILE_NAME	= PLACE_TR;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 836;
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
   2:  UFRAME_NUM=1 ;
   3:   ;
   4:J PR[R[52]] 40% CNT20 Tool_Offset,PR[92:#Tof tr apr (f]    ;
   5:L PR[R[52]] 400mm/sec FINE Tool_Offset,PR[90:Tof above tray]    ;
   6:  OVERRIDE=1% ;
   7:  PAUSE ;
   8:   ;
   9:  !T2 touch up > start here ;
  10:  OVERRIDE=2% ;
  11:L PR[R[52]] 100mm/sec FINE    ;
  12:  !^^^^^^^^^^^^^ ;
  13:   ;
  14:  RO[2:OFF:close T2]=ON ;
  15:  WAIT   1.00(sec) ;
  16:  RO[2:OFF:close T2]=OFF ;
  17:   ;
  18:L PR[R[52]] 400mm/sec CNT20 Tool_Offset,PR[91:#Tof tr apr (e]    ;
  19:  !> skip tray T2 ;
  20:  END ;
  21:  !> skip this pos in cycle ;
  22:  CALL RESET_PR(R[52:# tray T2/U1]) ;
/POS
/END
