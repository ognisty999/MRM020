/PROG  FORMAT_2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 852;
CREATE		= DATE 26-08-28  TIME 18:34:20;
MODIFIED	= DATE 26-08-28  TIME 18:34:20;
FILE_NAME	= FORMAT_1;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1208;
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
  11:  R[11:det H]=64.5    ;
  12:   ;
  13:  ! part width / szerokosc cietki ;
  14:  R[12:det D]=47.2    ;
  15:   ;
  16:  ! vice1 grip depth / gl. imadla 1 ;
  17:  R[3:vi1 clmp on det]=20    ;
  18:   ;
  19:  ! vice2 grip depth / gl. imadla 2 ;
  20:  R[4:vi2 clmp on det]=40    ;
  21:   ;
  22:  ! grip depth / glebokosc chwytu ;
  23:  R[7:fingers on det]=17    ;
  24:   ;
  25:  R[13:tray clearance Z]=100    ;
  26:  R[14:vice clearance Z]=50    ;
  27:   ;
  28:  R[16:det tr dist X]=32.8    ;
  29:  R[17:det tr dist Y]=32.8    ;
  30:   ;
  31:  R[8:blow apr]=40    ;
  32:  R[9:bl/pick rad adj]=(-10)    ;
  33:   ;
  34:   ;
  35:   ;
  36:   ;
/POS
/END
