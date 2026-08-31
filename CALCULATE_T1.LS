/PROG  CALCULATE_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 658;
CREATE		= DATE 25-06-03  TIME 16:21:14;
MODIFIED	= DATE 26-03-16  TIME 17:18:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 930;
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
   1:  R[51:# tray T1/U1]=100    ;
   2:   ;
   3:  FOR R[21:# row]=1 TO R[25:# row max] ;
   4:  FOR R[22:# col]=1 TO R[26:# col max] ;
   5:   ;
   6:  R[51:# tray T1/U1]=R[51:# tray T1/U1]+1    ;
   7:   ;
   8:  IF (R[51:# tray T1/U1]>200) THEN ;
   9:  MESSAGE[! limit pozycji tacki] ;
  10:  PAUSE ;
  11:  ENDIF ;
  12:   ;
  13:  PR[R[51]]=PR[7:# tray 1 T1/U1]    ;
  14:  PR[R[51],2]=(PR[R[51],2]+(R[22:# col]-1)*(R[12:det D]+R[17:det tr dist Y])) ;
  15:  PR[R[51],1]=(PR[R[51],1]+(R[21:# row]-1)*(R[12:det D]+R[16:det tr dist X])) ;
  16:   ;
  17:  CALL OPTIMIZE_POS(R[51:# tray T1/U1],92,1) ;
  18:   ;
  19:  IF (R[30:# opt pos err]<>0) THEN ;
  20:  CALL RESET_PR(R[51:# tray T1/U1]) ;
  21:  PAUSE ;
  22:  ENDIF ;
  23:   ;
  24:  ENDFOR ;
  25:  ENDFOR ;
  26:   ;
  27:  R[53:# tray T1 max]=R[51:# tray T1/U1]    ;
  28:   ;
  29:  MESSAGE[< poz tacki T1 obl] ;
/POS
/END
