/PROG  FORMAT_1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1122;
CREATE		= DATE 26-08-28  TIME 17:38:48;
MODIFIED	= DATE 26-08-31  TIME 18:22:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 45;
MEMORY_SIZE	= 1442;
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
   1:  ! FORMAT 1 ;
   2:  ! Part no. 99AVK-412011500 REV.AH ;
   3:   ;
   4:  ! created: 28/08/2026 ;
   5:  ! author: M. Nadolski ;
   6:   ;
   7:  ! last modified: XX/XX/XXXX ;
   8:  ! by: XXXXXXX ;
   9:   ;
  10:  ! part height / wysokosc cietki ;
  11:  R[11:det H]=65    ;
  12:   ;
  13:  ! part width / szerokosc cietki ;
  14:  ! (circumscribed / okrag opisany) ;
  15:  R[12:det D]=47.1    ;
  16:   ;
  17:  ! vice1 grip depth / gl. imadla 1 ;
  18:  R[3:vi1 clmp on det]=13    ;
  19:   ;
  20:  ! vice2 grip depth / gl. imadla 2 ;
  21:  R[4:vi2 clmp on det]=22.55    ;
  22:   ;
  23:  ! grip depth / glebokosc chwytu ;
  24:  R[7:fingers on det]=35    ;
  25:   ;
  26:  ! tray clear. / najazd tacka ;
  27:  R[13:tray clearance Z]=100    ;
  28:   ;
  29:  ! vice clear. / najazd wrzeciono ;
  30:  R[14:vice clearance Z]=50    ;
  31:   ;
  32:  ! Grip Method / Metoda chwytu ;
  33:  ! (1 - inside, 2 - outside) ;
  34:  ! (1-wewnetrzny, 2-zewnetrzny) ;
  35:  R[15:grip in1 / out2]=2    ;
  36:   ;
  37:  R[16:det tr dist X]=32.8    ;
  38:  R[17:det tr dist Y]=32.8    ;
  39:   ;
  40:  R[8:blow apr]=40    ;
  41:  R[9:bl/pick rad adj]=(-10)    ;
  42:   ;
  43:  MESSAGE[ FORMAT 1 ] ;
  44:  MESSAGE[ 99AVK-412011500 REV.AH] ;
  45:  MESSAGE[ CONFIRM ???] ;
/POS
/END
