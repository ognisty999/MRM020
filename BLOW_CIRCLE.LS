/PROG  BLOW_CIRCLE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "(vi,e/f,rot,adj)";
PROG_SIZE	= 1436;
CREATE		= DATE 26-01-19  TIME 12:08:28;
MODIFIED	= DATE 26-03-05  TIME 14:14:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 69;
MEMORY_SIZE	= 1944;
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
   1:  !AR1 41/42 vice1/vice2 ;
   2:  !AR2 0/1 vi empty/det in vi ;
   3:  !AR3 rotations ;
   4:  !AR4 radius adjustment ;
   5:   ;
   6:  LBL[1:vice check] ;
   7:  IF (AR[1]=41 AND AR[2]=0 AND DI[13:ON :vice1 detail]) THEN ;
   8:  UALM[7] ;
   9:  JMP LBL[1] ;
  10:  ENDIF ;
  11:  IF (AR[1]=42 AND AR[2]=0 AND DI[14:OFF:vice2 detail]) THEN ;
  12:  UALM[7] ;
  13:  JMP LBL[1] ;
  14:  ENDIF ;
  15:  IF (AR[1]=41 AND AR[2]=1 AND !DI[13:ON :vice1 detail]),JMP LBL[10] ;
  16:  IF (AR[1]=42 AND AR[2]=1 AND !DI[14:OFF:vice2 detail]),JMP LBL[10] ;
  17:   ;
  18:  CALL RESET_PR(72) ;
  19:  CALL RESET_PR(86) ;
  20:   ;
  21:  UTOOL_NUM=4 ;
  22:  PR[72,1:#of blow retr]=70    ;
  23:  PR[72,3:#of blow retr]=R[8:blow apr]    ;
  24:  IF (AR[1]=41) THEN ;
  25:  UFRAME_NUM=7 ;
  26:  PR[72,2:#of blow retr]=70    ;
  27:  IF (AR[2]=0) THEN ;
  28:  PR[86,3:#Tof blow]=(R[3:vi1 clmp on det]-R[11:det H]) ;
  29:  ENDIF ;
  30:  ELSE ;
  31:  IF (AR[1]=42) THEN ;
  32:  UFRAME_NUM=8 ;
  33:  PR[72,2:#of blow retr]=(-70)    ;
  34:  IF (AR[2]=0) THEN ;
  35:  PR[86,3:#Tof blow]=(R[4:vi2 clmp on det]-R[11:det H]) ;
  36:  ENDIF ;
  37:  ELSE ;
  38:  PAUSE ;
  39:  ENDIF ;
  40:  ENDIF ;
  41:   ;
  42:  PR[87:#Tof blow C]=PR[86:#Tof blow]    ;
  43:   ;
  44:  PR[86,1:#Tof blow]=(R[12:det D]/2+AR[4]) ;
  45:   ;
  46:J PR[AR[1]] 50% CNT25 Tool_Offset,PR[86:#Tof blow] Offset,PR[71:#of blow apr]    ;
  47:   ;
  48:  CALL START_BLOW    ;
  49:   ;
  50:L PR[AR[1]] 2000mm/sec CNT10 Tool_Offset,PR[86:#Tof blow]    ;
  51:   ;
  52:  FOR R[28:# blow rot]=1 TO AR[3] ;
  53:   ;
  54:  PR[86,1:#Tof blow]=(R[12:det D]/(-2)-AR[4]) ;
  55:  PR[87,2:#Tof blow C]=(R[12:det D]/2+AR[4]) ;
  56:   ;
  57:C PR[AR[1]] Tool_Offset,PR[87:#Tof blow C]
    :  PR[AR[1]] 500mm/sec CNT10 Tool_Offset,PR[86:#Tof blow]    ;
  58:   ;
  59:  PR[86,1:#Tof blow]=(R[12:det D]/2+AR[4]) ;
  60:  PR[87,2:#Tof blow C]=(R[12:det D]/(-2)-AR[4]) ;
  61:   ;
  62:C PR[AR[1]] Tool_Offset,PR[87:#Tof blow C]
    :  PR[AR[1]] 500mm/sec CNT10 Tool_Offset,PR[86:#Tof blow]    ;
  63:   ;
  64:  ENDFOR ;
  65:   ;
  66:L PR[AR[1]] 2000mm/sec CNT25 Tool_Offset,PR[86:#Tof blow] Offset,PR[72:#of blow retr]    ;
  67:   ;
  68:  CALL STOP_BLOW    ;
  69:  LBL[10:vice no det skip] ;
/POS
/END
