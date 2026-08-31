/PROG  GO_TABLE_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 551;
CREATE		= DATE 26-01-16  TIME 12:11:16;
MODIFIED	= DATE 26-01-16  TIME 12:11:16;
FILE_NAME	= GO_VICE_;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 907;
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
   2:  UFRAME_NUM=0 ;
   3:   ;
   4:J P[1:above table] 50% CNT50    ;
/POS
P[1:"above table"]{
   GP1:
	UF : 0, UT : 2,	
	J1=   -45.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     -.000 deg,	J5=   -90.000 deg,	J6=   -90.000 deg
};
/END
