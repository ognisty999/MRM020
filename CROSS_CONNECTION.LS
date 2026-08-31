/PROG  CROSS_CONNECTION
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "bg logic";
PROG_SIZE	= 816;
CREATE		= DATE 25-07-07  TIME 23:50:12;
MODIFIED	= DATE 26-01-23  TIME 12:26:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1200;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  F[201:OFF]=(DI[1:OFF:scanner 1 ok] OR DI[2:OFF:scanner 2 ok]) ;
   2:   ;
   3:  IF (RI[3:ON :T1 opened] OR RI[4:OFF:T1 closed]),F[11:OFF:# T1 detail]=(OFF) ;
   4:  IF (RI[1:OFF:T2 opened] OR RI[2:OFF:T2 closed]),F[12:ON :# T2 detail]=(OFF) ;
   5:   ;
   6:  DO[14:ON :yellow light]=(!DI[3:OFF:scanner 3 ok]) ;
   7:  DO[15:OFF:green light]=(UO[3:OFF:Prg running]) ;
   8:  //DO[16:ON :red light]=(!DI[1:OFF:scanner 1 ok] OR !DI[2:OFF:scanner 2 ok] OR UO[6:ON :Fault]) ;
   9:  DO[16:ON :red light]=(UO[6:ON :Fault]) ;
  10:   ;
  11:  IF (DO[64:OFF:AUTO mode] AND !UO[8:ON :TP enabled]) THEN ;
  12:  IF (!DI[3:OFF:scanner 3 ok]) THEN ;
  13:  UALM[5] ;
  14:  ENDIF ;
  15:  ENDIF ;
  16:   ;
  17:  //IF (DO[64:OFF:AUTO mode] AND !UO[8:ON :TP enabled]) THEN ;
  18:  //IF (!DI[1:OFF:scanner 1 ok] OR !DI[2:OFF:scanner 2 ok]) THEN ;
  19:  //UALM[5] ;
  20:  //ENDIF ;
  21:  //IF (!DI[1:OFF:scanner 1 ok] OR !DI[2:OFF:scanner 2 ok] OR !DI[3:OFF:scanner 3 ok]) THEN ;
  22:  //$mcr.$genoverride=(5) ;
  23:  //ELSE ;
  24:  //$mcr.$genoverride=(70) ;
  25:  //ENDIF ;
  26:  //ENDIF ;
  27:   ;
  28:  IF (UO[3:OFF:Prg running]=ON AND DO[63:OFF:switch remote]=ON) THEN ;
  29:  DO[63:OFF:switch remote]=OFF ;
  30:  ENDIF ;
  31:   ;
  32:  IF (DO[63:OFF:switch remote]=ON) THEN ;
  33:  F[151:ON ]=(ON) ;
  34:  F[152:ON ]=(ON) ;
  35:  F[153:ON ]=(ON) ;
  36:  F[158:ON ]=(ON) ;
  37:  ENDIF ;
/POS
/END
