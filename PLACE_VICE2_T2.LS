/PROG  PLACE_VICE2_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 865;
CREATE		= DATE 25-08-12  TIME 09:43:56;
MODIFIED	= DATE 26-04-30  TIME 14:38:24;
FILE_NAME	= PLACE_VI;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1281;
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
   1:  LBL[1:vice2 check] ;
   2:  IF (DI[14:OFF:vice2 detail]) THEN ;
   3:  UALM[7] ;
   4:  JMP LBL[1] ;
   5:  ENDIF ;
   6:  IF (!F[12:OFF:# T2 detail]),JMP LBL[10] ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=9 ;
   9:   ;
  10:J PR[34:# vice2 T2/U9] 50% CNT20 Tool_Offset,PR[95:#Tof vi2 apr (]    ;
  11:L PR[34:# vice2 T2/U9] 500mm/sec FINE    ;
  12:   ;
  13:  CALL DROP_T2    ;
  14:   ;
  15:L P[1:push] 100mm/sec FINE ACC10 INC    ;
  16:   ;
  17:  WAIT DO[4:OFF:open vice2]=OFF    ;
  18:  DO[5:OFF:close vice2]=ON ;
  19:  WAIT   5.00(sec) ;
  20:  WAIT DI[14:OFF:vice2 detail]=ON    ;
  21:  DO[5:OFF:close vice2]=OFF ;
  22:   ;
  23:L PR[34:# vice2 T2/U9] 500mm/sec CNT20 Tool_Offset,PR[96:#Tof vi apr (e]    ;
  24:  LBL[10:T2 no det skip] ;
/POS
P[1:"push"]{
   GP1:
	UF : 9, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =    -1.500  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
