/PROG  SET_SPC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2754;
CREATE		= DATE 24-04-18  TIME 14:48:54;
MODIFIED	= DATE 26-03-10  TIME 14:24:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 75;
MEMORY_SIZE	= 3370;
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
   1:  !space vice1 ;
   2:  R[101:#x]=PR[1,1:@ ref vice1 T1]-R[1:@ ref det H]    ;
   3:  R[102:#y]=PR[1,2:@ ref vice1 T1]-300    ;
   4:  R[103:#z]=PR[1,3:@ ref vice1 T1]-300    ;
   5:  $RSPACE1[1].$FIRST_VTEX[1]=R[101:#x] ;
   6:  $RSPACE1[1].$FIRST_VTEX[2]=R[102:#y] ;
   7:  $RSPACE1[1].$FIRST_VTEX[3]=R[103:#z] ;
   8:  $RSPACE1[1].$LENGTH_VTEX=2 ;
   9:  R[101:#x]=PR[1,1:@ ref vice1 T1]+250    ;
  10:  R[102:#y]=PR[1,2:@ ref vice1 T1]+300    ;
  11:  R[103:#z]=PR[1,3:@ ref vice1 T1]+300    ;
  12:  $RSPACE1[1].$SECND_VTEX[1]=R[101:#x] ;
  13:  $RSPACE1[1].$SECND_VTEX[2]=R[102:#y] ;
  14:  $RSPACE1[1].$SECND_VTEX[3]=R[103:#z] ;
  15:   ;
  16:  !space vice2 ;
  17:  R[101:#x]=PR[3,1:@ ref vice2 T1]-250    ;
  18:  R[102:#y]=PR[3,2:@ ref vice2 T1]-300    ;
  19:  R[103:#z]=PR[3,3:@ ref vice2 T1]-300    ;
  20:  $RSPACE1[2].$FIRST_VTEX[1]=R[101:#x] ;
  21:  $RSPACE1[2].$FIRST_VTEX[2]=R[102:#y] ;
  22:  $RSPACE1[2].$FIRST_VTEX[3]=R[103:#z] ;
  23:  $RSPACE1[2].$LENGTH_VTEX=2 ;
  24:  R[101:#x]=PR[3,1:@ ref vice2 T1]+R[1:@ ref det H]    ;
  25:  R[102:#y]=PR[3,2:@ ref vice2 T1]+300    ;
  26:  R[103:#z]=PR[3,3:@ ref vice2 T1]+300    ;
  27:  $RSPACE1[2].$SECND_VTEX[1]=R[101:#x] ;
  28:  $RSPACE1[2].$SECND_VTEX[2]=R[102:#y] ;
  29:  $RSPACE1[2].$SECND_VTEX[3]=R[103:#z] ;
  30:   ;
  31:  !space door closed ;
  32:  R[101:#x]=PR[9,1:@ door closed T3]-350    ;
  33:  R[102:#y]=PR[9,2:@ door closed T3]-100    ;
  34:  R[103:#z]=PR[9,3:@ door closed T3]-400    ;
  35:  $RSPACE1[3].$FIRST_VTEX[1]=R[101:#x] ;
  36:  $RSPACE1[3].$FIRST_VTEX[2]=R[102:#y] ;
  37:  $RSPACE1[3].$FIRST_VTEX[3]=R[103:#z] ;
  38:  $RSPACE1[3].$LENGTH_VTEX=2 ;
  39:  R[101:#x]=PR[9,1:@ door closed T3]+100    ;
  40:  R[102:#y]=PR[9,2:@ door closed T3]+100    ;
  41:  R[103:#z]=PR[9,3:@ door closed T3]+400    ;
  42:  $RSPACE1[3].$SECND_VTEX[1]=R[101:#x] ;
  43:  $RSPACE1[3].$SECND_VTEX[2]=R[102:#y] ;
  44:  $RSPACE1[3].$SECND_VTEX[3]=R[103:#z] ;
  45:   ;
  46:  !space door opened ;
  47:  R[101:#x]=PR[10,1:@ door opened T3]-100    ;
  48:  R[102:#y]=PR[10,2:@ door opened T3]-100    ;
  49:  R[103:#z]=PR[10,3:@ door opened T3]-400    ;
  50:  $RSPACE1[4].$FIRST_VTEX[1]=R[101:#x] ;
  51:  $RSPACE1[4].$FIRST_VTEX[2]=R[102:#y] ;
  52:  $RSPACE1[4].$FIRST_VTEX[3]=R[103:#z] ;
  53:  $RSPACE1[4].$LENGTH_VTEX=2 ;
  54:  R[101:#x]=PR[10,1:@ door opened T3]+350    ;
  55:  R[102:#y]=PR[10,2:@ door opened T3]+100    ;
  56:  R[103:#z]=PR[10,3:@ door opened T3]+400    ;
  57:  $RSPACE1[4].$SECND_VTEX[1]=R[101:#x] ;
  58:  $RSPACE1[4].$SECND_VTEX[2]=R[102:#y] ;
  59:  $RSPACE1[4].$SECND_VTEX[3]=R[103:#z] ;
  60:   ;
  61:  !space tray ;
  62:  PR[100:#]=$MNUFRAME[1,1] ;
  63:  R[101:#x]=(PR[100,1:#]-R[2:@ ref det D]/2-R[18:tray fringe X]) ;
  64:  R[102:#y]=(PR[100,2:#]-R[2:@ ref det D]/2-R[19:tray fringe Y]) ;
  65:  R[103:#z]=PR[100,3:#]-R[1:@ ref det H]    ;
  66:  $RSPACE1[5].$FIRST_VTEX[1]=R[101:#x] ;
  67:  $RSPACE1[5].$FIRST_VTEX[2]=R[102:#y] ;
  68:  $RSPACE1[5].$FIRST_VTEX[3]=R[103:#z] ;
  69:  $RSPACE1[5].$LENGTH_VTEX=2 ;
  70:  R[101:#x]=R[101:#x]+R[5:tray length X]    ;
  71:  R[102:#y]=R[102:#y]+R[6:tray width Y]    ;
  72:  R[103:#z]=R[103:#z]+700    ;
  73:  $RSPACE1[5].$SECND_VTEX[1]=R[101:#x] ;
  74:  $RSPACE1[5].$SECND_VTEX[2]=R[102:#y] ;
  75:  $RSPACE1[5].$SECND_VTEX[3]=R[103:#z] ;
/POS
/END
