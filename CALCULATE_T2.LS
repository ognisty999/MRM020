/PROG  CALCULATE_T2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 702;
CREATE		= DATE 25-06-03  TIME 16:20:54;
MODIFIED	= DATE 26-03-16  TIME 17:17:54;
FILE_NAME	= CALCULAT;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 974;
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
   1:  R[52:# tray T2/U1]=200    ;
   2:   ;
   3:  FOR R[21:# row]=1 TO R[25:# row max] ;
   4:  FOR R[22:# col]=1 TO R[26:# col max] ;
   5:   ;
   6:  R[52:# tray T2/U1]=R[52:# tray T2/U1]+1    ;
   7:   ;
   8:  IF (R[52:# tray T2/U1]>300) THEN ;
   9:  MESSAGE[! limit pozycji tacki] ;
  10:  PAUSE ;
  11:  ENDIF ;
  12:   ;
  13:  PR[R[52]]=PR[8:# tray 1 T2/U1]    ;
  14:  PR[R[52],2]=(PR[R[52],2]+(R[22:# col]-1)*(R[12:det D]+R[17:det tr dist Y])) ;
  15:  PR[R[52],1]=(PR[R[52],1]+(R[21:# row]-1)*(R[12:det D]+R[16:det tr dist X])) ;
  16:   ;
  17:  CALL OPTIMIZE_POS(R[52:# tray T2/U1],92,2) ;
  18:   ;
  19:  IF (R[30:# opt pos err]<>0) THEN ;
  20:  CALL RESET_PR(R[52:# tray T2/U1]) ;
  21:  PAUSE ;
  22:  ENDIF ;
  23:   ;
  24:  ENDFOR ;
  25:  ENDFOR ;
  26:   ;
  27:  R[54:# tray T2 max]=R[52:# tray T2/U1]    ;
  28:   ;
  29:  MESSAGE[< poz tacki T2 obl] ;
/POS
/END
