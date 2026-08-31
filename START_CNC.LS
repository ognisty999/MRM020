/PROG  START_CNC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "run";
PROG_SIZE	= 190;
CREATE		= DATE 25-07-08  TIME 00:14:54;
MODIFIED	= DATE 25-08-21  TIME 09:47:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 546;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  F[3:OFF:# starting cnc]=(ON) ;
   2:  WAIT    .50(sec) ;
   3:  DO[1:OFF:start cnc]=PULSE,1.0sec ;
   4:  F[3:OFF:# starting cnc]=(OFF) ;
/POS
/END
