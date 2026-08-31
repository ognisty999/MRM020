/PROG  GO_HOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 3538;
CREATE		= DATE 23-01-13  TIME 21:23:04;
MODIFIED	= DATE 26-03-11  TIME 14:52:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 166;
MEMORY_SIZE	= 4114;
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
   1:  F[5:OFF:# NO close d / start cnc]=(ON) ;
   2:  DO[7:OFF:blow]=OFF ;
   3:  IF DO[51:ON :ref HOME]=ON,JMP LBL[100] ;
   4:  OVERRIDE=10% ;
   5:   ;
   6:  LBL[10:active tool] ;
   7:  PR[99:#Jpos]=JPOS    ;
   8:  IF $MNUTOOLNUM[1]=1,JMP LBL[1] ;
   9:  IF $MNUTOOLNUM[1]=2,JMP LBL[2] ;
  10:  IF $MNUTOOLNUM[1]=3,JMP LBL[3] ;
  11:  IF $MNUTOOLNUM[1]=4,JMP LBL[4] ;
  12:  UALM[8] ;
  13:  JMP LBL[10] ;
  14:   ;
  15:  LBL[1:T1] ;
  16:  IF (!DO[41:ON :spc vice1] AND !DO[42:ON :spc vice2]) THEN ;
  17:  CALL GO_OUT_LATHE_T1    ;
  18:   ;
  19:  ELSE ;
  20:  IF (!DO[42:ON :spc vice2]) THEN ;
  21:  IF (!F[11:OFF:# T1 detail] OR !DI[14:OFF:vice2 detail]) THEN ;
  22:  UFRAME_NUM=8 ;
  23:L PR[33:# vice2 T1/U8] 500mm/sec CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
  24:  ENDIF ;
  25:  CALL GO_OUT_LATHE_T1    ;
  26:   ;
  27:  ELSE ;
  28:  IF (!DO[41:ON :spc vice1]) THEN ;
  29:  IF (!F[11:OFF:# T1 detail] OR !DI[13:ON :vice1 detail]) THEN ;
  30:  UFRAME_NUM=6 ;
  31:L PR[31:# vice1 T1/U6] 500mm/sec CNT20 Tool_Offset,PR[94:#Tof vi1 apr (]    ;
  32:  ENDIF ;
  33:  CALL GO_OUT_LATHE_T1    ;
  34:   ;
  35:  ELSE ;
  36:  IF (!DO[45:ON :spc tray]) THEN ;
  37:  UFRAME_NUM=1 ;
  38:  PR[98:#Lpos]=LPOS    ;
  39:  IF (PR[98,3:#Lpos]<PR[7,3:# tray 1 T1/U1]+PR[92,3:#Tof tr apr (f)]) THEN ;
  40:  PR[98,3:#Lpos]=PR[7,3:# tray 1 T1/U1]    ;
  41:L PR[98:#Lpos] 500mm/sec CNT20 Tool_Offset,PR[92:#Tof tr apr (f]    ;
  42:  ENDIF ;
  43:  CALL GO_TABLE_T1    ;
  44:   ;
  45:  ELSE ;
  46:  IF (!DO[43:ON :spc door cl] OR !DO[44:ON :spc door op]) THEN ;
  47:  F[6:OFF:# skip deep lathe]=(ON) ;
  48:  CALL GO_OUT_LATHE_T1    ;
  49:   ;
  50:  ELSE ;
  51:  IF (PR[99,1:#Jpos]<120 AND PR[99,1:#Jpos]>60) THEN ;
  52:  F[6:OFF:# skip deep lathe]=(ON) ;
  53:  CALL GO_OUT_LATHE_T1    ;
  54:  ENDIF ;
  55:   ;
  56:  ENDIF ;
  57:  ENDIF ;
  58:  ENDIF ;
  59:  ENDIF ;
  60:  ENDIF ;
  61:  JMP LBL[50] ;
  62:   ;
  63:  LBL[2:T2] ;
  64:  IF (!DO[41:ON :spc vice1] AND !DO[42:ON :spc vice2]) THEN ;
  65:  CALL GO_OUT_LATHE_T2    ;
  66:   ;
  67:  ELSE ;
  68:  IF (!DO[41:ON :spc vice1]) THEN ;
  69:  IF (!F[12:ON :# T2 detail] OR !DI[13:ON :vice1 detail]) THEN ;
  70:  UFRAME_NUM=7 ;
  71:L PR[32:# vice1 T2/U7] 500mm/sec CNT20 Tool_Offset,PR[95:#Tof vi2 apr (]    ;
  72:  ENDIF ;
  73:  CALL GO_OUT_LATHE_T2    ;
  74:   ;
  75:  ELSE ;
  76:  IF (!DO[42:ON :spc vice2]) THEN ;
  77:  IF (!F[12:ON :# T2 detail] OR !DI[14:OFF:vice2 detail]) THEN ;
  78:  UFRAME_NUM=9 ;
  79:L PR[34:# vice2 T2/U9] 500mm/sec CNT20 Tool_Offset,PR[95:#Tof vi2 apr (]    ;
  80:  ENDIF ;
  81:  CALL GO_OUT_LATHE_T2    ;
  82:   ;
  83:  ELSE ;
  84:  IF (!DO[45:ON :spc tray]) THEN ;
  85:  UFRAME_NUM=1 ;
  86:  PR[98:#Lpos]=LPOS    ;
  87:  IF (PR[98,3:#Lpos]<PR[8,3:# tray 1 T2/U1]+PR[92,3:#Tof tr apr (f)]) THEN ;
  88:  PR[98,3:#Lpos]=PR[8,3:# tray 1 T2/U1]    ;
  89:L PR[98:#Lpos] 500mm/sec CNT20 Tool_Offset,PR[92:#Tof tr apr (f]    ;
  90:  ENDIF ;
  91:  CALL GO_TABLE_T2    ;
  92:   ;
  93:  ELSE ;
  94:  IF (!DO[43:ON :spc door cl] OR !DO[44:ON :spc door op]) THEN ;
  95:  F[6:OFF:# skip deep lathe]=(ON) ;
  96:  CALL GO_OUT_LATHE_T2    ;
  97:   ;
  98:  ELSE ;
  99:  IF (PR[99,1:#Jpos]<120 AND PR[99,1:#Jpos]>60) THEN ;
 100:  F[6:OFF:# skip deep lathe]=(ON) ;
 101:  CALL GO_OUT_LATHE_T2    ;
 102:  ENDIF ;
 103:   ;
 104:  ENDIF ;
 105:  ENDIF ;
 106:  ENDIF ;
 107:  ENDIF ;
 108:  ENDIF ;
 109:  JMP LBL[50] ;
 110:   ;
 111:  LBL[3:door handle] ;
 112:  UFRAME_NUM=0 ;
 113:  PR[98:#Lpos]=LPOS    ;
 114:  IF (!DO[43:ON :spc door cl]) THEN ;
 115:  IF (PR[98,2:#Lpos]>PR[9,2:@ door closed T3]+PR[81,1:Tof door apr]) THEN ;
 116:  PR[98,2:#Lpos]=PR[9,2:@ door closed T3]    ;
 117:L PR[98:#Lpos] 500mm/sec CNT10 Tool_Offset,PR[81:Tof door apr]    ;
 118:  ENDIF ;
 119:   ;
 120:  ELSE ;
 121:  IF (!DO[44:ON :spc door op]) THEN ;
 122:  IF (PR[98,2:#Lpos]>PR[10,2:@ door opened T3]+PR[81,1:Tof door apr]) THEN ;
 123:  PR[98,2:#Lpos]=PR[10,2:@ door opened T3]    ;
 124:L PR[98:#Lpos] 500mm/sec CNT10 Tool_Offset,PR[81:Tof door apr]    ;
 125:  ENDIF ;
 126:   ;
 127:  ELSE ;
 128:   ;
 129:  ENDIF ;
 130:  ENDIF ;
 131:  IF (PR[99,1:#Jpos]<45 AND PR[99,1:#Jpos]>0) THEN ;
 132:L P[1:face to door] 500mm/sec CNT50    ;
 133:  ENDIF ;
 134:J P[2:side to door] 50% CNT50    ;
 135:  JMP LBL[50] ;
 136:   ;
 137:  LBL[4:blow] ;
 138:  IF (!DO[41:ON :spc vice1] AND !DO[42:ON :spc vice2]) THEN ;
 139:  IF $MNUFRAMENUM[1]=7,CALL GO_OUT_LATHE_T2 ;
 140:  IF $MNUFRAMENUM[1]=8,CALL GO_OUT_LATHE_T1 ;
 141:   ;
 142:  ELSE ;
 143:  IF (!DO[41:ON :spc vice1]) THEN ;
 144:  UFRAME_NUM=7 ;
 145:L PR[41:# blow vi1 T4/U7] 500mm/sec CNT20 Tool_Offset,PR[86:#Tof blow] Offset,PR[72:#of blow retr]    ;
 146:  CALL GO_OUT_LATHE_T2    ;
 147:   ;
 148:  ELSE ;
 149:  IF (!DO[42:ON :spc vice2]) THEN ;
 150:  UFRAME_NUM=8 ;
 151:L PR[42:# blow vi2 T4/U8] 500mm/sec CNT20 Tool_Offset,PR[86:#Tof blow] Offset,PR[72:#of blow retr]    ;
 152:  CALL GO_OUT_LATHE_T1    ;
 153:  ELSE ;
 154:   ;
 155:  ENDIF ;
 156:  ENDIF ;
 157:  ENDIF ;
 158:  JMP LBL[50] ;
 159:   ;
 160:  LBL[50:spc recovered] ;
 161:J PR[11:@ HOME] 50% FINE    ;
 162:   ;
 163:  LBL[100:at home already] ;
 164:  IF ((!RI[1:OFF:T2 opened] AND !RI[2:OFF:T2 closed] AND !F[12:ON :# T2 detail]) OR (!RI[3:ON :T1 opened] AND !RI[4:OFF:T1 closed] AND !F[11:OFF:# T1 detail])) THEN ;
 165:  UALM[6] ;
 166:  ENDIF ;
/POS
P[1:"face to door"]{
   GP1:
	UF : 0, UT : 3,	
	J1=    90.000 deg,	J2=   -40.000 deg,	J3=    25.000 deg,
	J4=     -.000 deg,	J5=  -115.000 deg,	J6=   -90.000 deg
};
P[2:"side to door"]{
   GP1:
	UF : 0, UT : 3,	
	J1=     -.000 deg,	J2=   -40.000 deg,	J3=    25.000 deg,
	J4=     -.000 deg,	J5=  -115.000 deg,	J6=   -90.000 deg
};
/END
