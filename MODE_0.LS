/PROG  MODE_0
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "teach";
PROG_SIZE	= 492;
CREATE		= DATE 26-01-19  TIME 10:32:48;
MODIFIED	= DATE 26-04-29  TIME 11:52:28;
FILE_NAME	= MODE_3;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 832;
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
   1:  !det to gripper manually ;
   2:  !check required F teach ;
   3:   ;
   4:  IF (R[21:# row]=R[23:row to start] AND R[22:# col]=R[24:col to start] AND (F[25:OFF:teach tray T1] OR F[26:OFF:teach tray T2])),CALL GO_TABLE_T1 ;
   5:   ;
   6:  IF (F[25:OFF:teach tray T1]),CALL TEACH_TRAY_T1 ;
   7:  IF (F[26:OFF:teach tray T2]),CALL TEACH_TRAY_T2 ;
   8:   ;
   9:  IF (R[21:# row]=R[25:# row max] AND R[22:# col]=R[26:# col max]) THEN ;
  10:  F[25:OFF:teach tray T1]=(OFF) ;
  11:  F[26:OFF:teach tray T2]=(OFF) ;
  12:  MESSAGE[# tryb produkcji] ;
  13:  PAUSE ;
  14:  ENDIF ;
/POS
/END
