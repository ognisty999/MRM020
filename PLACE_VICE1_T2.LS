/PROG  PLACE_VICE1_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 857;
CREATE		= DATE 25-08-12  TIME 09:42:14;
MODIFIED	= DATE 26-04-30  TIME 14:38:00;
FILE_NAME	= PLACE_VI;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1273;
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
   1:  LBL[1:vice1 check] ;
   2:  IF (DI[13:OFF:vice1 detail]) THEN ;
   3:  UALM[7] ;
   4:  JMP LBL[1] ;
   5:  ENDIF ;
   6:  IF (!F[12:OFF:# T2 detail]),JMP LBL[10] ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=7 ;
   9:   ;
  10:J PR[32:# vice1 T2/U7] 50% CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
  11:L PR[32:# vice1 T2/U7] 500mm/sec FINE    ;
  12:   ;
  13:  CALL DROP_T2    ;
  14:   ;
  15:L P[1:push] 100mm/sec FINE ACC10 INC    ;
  16:   ;
  17:  WAIT DO[2:OFF:open vice1]=OFF    ;
  18:  DO[3:OFF:close vice1]=ON ;
  19:  WAIT   5.00(sec) ;
  20:  WAIT DI[13:OFF:vice1 detail]=ON    ;
  21:  DO[3:OFF:close vice1]=OFF ;
  22:   ;
  23:L PR[32:# vice1 T2/U7] 500mm/sec CNT20 Tool_Offset,PR[96:#Tof vi apr (e]    ;
  24:  LBL[10:T2 no det skip] ;
/POS
P[1:"push"]{
   GP1:
	UF : 7, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =    -1.500  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
