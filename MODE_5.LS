/PROG  MODE_5
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1306;
CREATE		= DATE 26-04-29  TIME 12:10:42;
MODIFIED	= DATE 26-04-30  TIME 14:28:58;
FILE_NAME	= MODE_1;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 1846;
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
   1:  !tr# T2pick > vi1 T1pick > ;
   2:  !vi1 T2place > tr# T1place ;
   3:  !no det allowed in gr at start ;
   4:   ;
   5:  IF (R[21:# row]=R[23:row to start] AND R[22:# col]=R[24:col to start]) THEN ;
   6:  LBL[1:T1/T2 check] ;
   7:  IF (F[11:OFF:# T1 detail] OR F[12:OFF:# T2 detail]) THEN ;
   8:  UALM[6] ;
   9:  JMP LBL[1] ;
  10:  ENDIF ;
  11:  CALL GO_TABLE_T2    ;
  12:  ENDIF ;
  13:   ;
  14:  CALL PICK_TRAY_T2    ;
  15:   ;
  16:  IF (F[2:OFF:# pick up err]),JMP LBL[10] ;
  17:   ;
  18:  CALL GO_TABLE_T2    ;
  19:  CALL GO_IN_LATHE_T1    ;
  20:  CALL BLOW_CIRCLE(41,1,2,R[9:bl/pick rad adj]) ;
  21:   ;
  22:  //UTOOL_NUM=2 ;
  23:  //UFRAME_NUM=7 ;
  24:  //J P[1] 50% CNT50 INC    ;
  25:   ;
  26:  CALL PICK_VICE1_T1    ;
  27:  CALL BLOW_CIRCLE(41,0,2,R[9:bl/pick rad adj]) ;
  28:  CALL PLACE_VICE1_T2    ;
  29:   ;
  30:  //UTOOL_NUM=1 ;
  31:  //UFRAME_NUM=8 ;
  32:  //J P[2] 50% CNT50 INC    ;
  33:   ;
  34:  CALL GO_OUT_LATHE_T2    ;
  35:  CALL GO_TABLE_T1    ;
  36:   ;
  37:  IF (F[2:OFF:# pick up err]),JMP LBL[10] ;
  38:   ;
  39:  CALL PLACE_TRAY_T1    ;
  40:   ;
  41:  LBL[10:skip] ;
/POS
P[1]{
   GP1:
	UF : 7, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =   200.000  mm,	Y =   200.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 8, UT : 1,		CONFIG : 'N D B, 0, 0, 0',
	X =   200.000  mm,	Y =  -200.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
