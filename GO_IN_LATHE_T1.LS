/PROG  GO_IN_LATHE_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "open door";
PROG_SIZE	= 835;
CREATE		= DATE 26-03-04  TIME 16:19:34;
MODIFIED	= DATE 26-03-17  TIME 10:11:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 1139;
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
   3:   ;
   4:J P[1:side to door] 50% CNT50    ;
   5:   ;
   6:  WAIT (DI[5:OFF:door opened] OR DI[8:OFF:door closed])    ;
   7:  IF (DI[5:OFF:door opened]) THEN ;
   8:  MONITOR DOOR_OP_COND ;
   9:   ;
  10:J P[2:face to door] 50% CNT50    ;
  11:   ;
  12:  ELSE ;
  13:  CALL OPEN_DOOR    ;
  14:   ;
  15:  UTOOL_NUM=1 ;
  16:  UFRAME_NUM=0 ;
  17:   ;
  18:L P[2:face to door] 2000mm/sec CNT50    ;
  19:  ENDIF ;
  20:   ;
  21:J P[3:mid v1/v2] 50% CNT25    ;
/POS
P[1:"side to door"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg,	J3=    25.000 deg,
	J4=     0.000 deg,	J5=  -115.000 deg,	J6=   -90.000 deg
};
P[2:"face to door"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -40.000 deg,	J3=    25.000 deg,
	J4=     0.000 deg,	J5=  -115.000 deg,	J6=   -90.000 deg
};
P[3:"mid v1/v2"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    15.000 deg,	J3=   -15.000 deg,
	J4=     -.000 deg,	J5=   -45.000 deg,	J6=   -90.000 deg
};
/END
