/PROG  PLACE_VICE1_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 811;
CREATE		= DATE 25-08-12  TIME 09:41:24;
MODIFIED	= DATE 26-04-30  TIME 14:37:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1227;
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
   1:  LBL[1:vice1 check] ;
   2:  IF (DI[13:ON :vice1 detail]) THEN ;
   3:  UALM[7] ;
   4:  JMP LBL[1] ;
   5:  ENDIF ;
   6:  IF (!F[11:OFF:# T1 detail]),JMP LBL[10] ;
   7:  UTOOL_NUM=1 ;
   8:  UFRAME_NUM=6 ;
   9:   ;
  10:J PR[31:# vice1 T1/U6] 50% CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
  11:L PR[31:# vice1 T1/U6] 500mm/sec FINE    ;
  12:   ;
  13:  CALL DROP_T1    ;
  14:   ;
  15:L P[1:push] 100mm/sec FINE ACC10 INC    ;
  16:   ;
  17:  WAIT DO[2:OFF:open vice1]=OFF    ;
  18:  DO[3:OFF:close vice1]=ON ;
  19:  WAIT   5.00(sec) ;
  20:  WAIT DI[13:ON :vice1 detail]=ON    ;
  21:  DO[3:OFF:close vice1]=OFF ;
  22:   ;
  23:L PR[31:# vice1 T1/U6] 500mm/sec CNT20 Tool_Offset,PR[96:#Tof vi apr (e]    ;
  24:  LBL[10:T1 no det skip] ;
/POS
P[1:"push"]{
   GP1:
	UF : 6, UT : 1,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =    -1.500  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
