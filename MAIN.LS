/PROG  MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1230;
CREATE		= DATE 25-03-29  TIME 19:04:50;
MODIFIED	= DATE 26-08-31  TIME 18:02:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 1730;
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
   1:  MONITOR BASE_RDY_COND ;
   2:   ;
   3:  CALL GO_HOME    ;
   4:  CALL CLEAR_MSG    ;
   5:   ;
   6:  SELECT R[20:FORMAT]=1,CALL FORMAT_1 ;
   7:         ELSE,JMP LBL[101] ;
   8:   ;
   9:  PAUSE ;
  10:   ;
  11:  MESSAGE[>> FORMAT CONFIRMED] ;
  12:  WAIT   2.00(sec) ;
  13:   ;
  14:  CALL INITIALIZE    ;
  15:   ;
  16:  R[51:# tray T1/U1]=(100+(R[23:row to start]-1)*R[26:# col max]+R[24:col to start]) ;
  17:  R[52:# tray T2/U1]=(200+(R[23:row to start]-1)*R[26:# col max]+R[24:col to start]) ;
  18:   ;
  19:  FOR R[21:# row]=R[23:row to start] TO R[25:# row max] ;
  20:  FOR R[22:# col]=R[24:col to start] TO R[26:# col max] ;
  21:   ;
  22:  IF (R[51:# tray T1/U1]>R[53:# tray T1 max] OR R[52:# tray T2/U1]>R[54:# tray T2 max]) THEN ;
  23:  MESSAGE[! limit pozycji tacki] ;
  24:  ABORT ;
  25:  ENDIF ;
  26:   ;
  27:  IF (PR[R[51],1]=0 AND PR[R[51],2]=0 AND PR[R[51],3]=0 AND PR[R[51],4]=0 AND PR[R[51],5]=0 AND PR[R[51],6]=0),JMP LBL[10] ;
  28:  IF (PR[R[52],1]=0 AND PR[R[52],2]=0 AND PR[R[52],3]=0 AND PR[R[52],4]=0 AND PR[R[52],5]=0 AND PR[R[52],6]=0),JMP LBL[10] ;
  29:   ;
  30:  SELECT R[10:production mode]=0,CALL MODE_0 ;
  31:         =1,CALL MODE_1 ;
  32:         =2,CALL MODE_2 ;
  33:         =3,CALL MODE_3 ;
  34:         =4,CALL MODE_4 ;
  35:         =5,CALL MODE_5 ;
  36:         ELSE,JMP LBL[100] ;
  37:   ;
  38:  LBL[10:skip pos] ;
  39:  R[51:# tray T1/U1]=R[51:# tray T1/U1]+1    ;
  40:  R[52:# tray T2/U1]=R[52:# tray T2/U1]+1    ;
  41:  F[2:OFF:# pick up err]=(OFF) ;
  42:  IF (R[24:col to start]<>1),R[24:col to start]=(1) ;
  43:  IF (R[23:row to start]<>1),R[23:row to start]=(1) ;
  44:  ENDFOR ;
  45:  ENDFOR ;
  46:   ;
  47:J PR[11:@ HOME] 100% CNT10    ;
  48:J PR[12:@ MANUAL LATHE] 100% FINE    ;
  49:  END ;
  50:  LBL[100:mode err] ;
  51:  UALM[1] ;
  52:  END ;
  53:   ;
  54:  LBL[101] ;
  55:  UALM[9] ;
/POS
/END
