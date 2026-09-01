/PROG  GO_OUT_LATHE_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "close door";
PROG_SIZE	= 917;
CREATE		= DATE 26-03-04  TIME 16:20:12;
MODIFIED	= DATE 26-03-10  TIME 12:08:06;
FILE_NAME	= GO_1_VIC;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1341;
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
   4:  WAIT (DI[5:OFF:door opened])    ;
   5:   ;
   6:  IF (F[6:OFF:# skip deep lathe]),JMP LBL[1] ;
   7:J P[1:mid v1/v2] 50% CNT25    ;
   8:  LBL[1:skip deep lathe] ;
   9:J P[2:face to door] 50% CNT50    ;
  10:   ;
  11:  IF (F[5:ON :# NO close d / start cnc]) THEN ;
  12:J P[3:side to door] 50% CNT50    ;
  13:   ;
  14:  ELSE ;
  15:  CALL CLOSE_DOOR    ;
  16:   ;
  17:  UTOOL_NUM=2 ;
  18:  UFRAME_NUM=0 ;
  19:   ;
  20:  //L P[2:face to door] 800mm/sec CNT50    ;
  21:L P[3:side to door] 2000mm/sec CNT50    ;
  22:  ENDIF ;
/POS
P[1:"mid v1/v2"]{
   GP1:
	UF : 0, UT : 2,	
	J1=    90.000 deg,	J2=    15.000 deg,	J3=   -15.000 deg,
	J4=     -.000 deg,	J5=   -45.000 deg,	J6=   -90.000 deg
};
P[2:"face to door"]{
   GP1:
	UF : 0, UT : 2,	
	J1=    90.000 deg,	J2=   -40.000 deg,	J3=    25.000 deg,
	J4=     0.000 deg,	J5=  -115.000 deg,	J6=   -90.000 deg
};
P[3:"side to door"]{
   GP1:
	UF : 0, UT : 2,	
	J1=     0.000 deg,	J2=   -40.000 deg,	J3=    25.000 deg,
	J4=     0.000 deg,	J5=  -115.000 deg,	J6=   -90.000 deg
};
/END
