UNIT OperationsWithWords;

INTERFACE
LowRegister: ARRAY['A' .. 'Z', 'À' .. 'ß'] OF CHAR;
PROCEDURE Initialize(VAR Code: LowRegister);

IMPLEMENTATION

PROCEDURE Initialize(VAR Code: LowRegister);
BEGIN {Initialize}
  Code['A'] := 'a';
  Code['B'] := 'b';
  Code['C'] := 'c';
  Code['D'] := 'd';
  Code['E'] := 'e';
  Code['F'] := 'f';
  Code['G'] := 'g';
  Code['H'] := 'h';
  Code['I'] := 'i';
  Code['J'] := 'j';
  Code['K'] := 'k';
  Code['L'] := 'l';
  Code['M'] := 'm';
  Code['N'] := 'n';
  Code['O'] := 'o';
  Code['P'] := 'p';
  Code['Q'] := 'q';
  Code['R'] := 'r';
  Code['S'] := 's';
  Code['T'] := 't';
  Code['U'] := 'u';
  Code['V'] := 'v';
  Code['W'] := 'w';
  Code['X'] := 'x';
  Code['Y'] := 'y';
  Code['Z'] := 'z';
  Code['À'] := 'à';
  Code['Á'] := 'á';
  Code['Ñ'] := 'ñ';
  Code['Ä'] := 'ä';
  Code['Å'] := 'å';
  Code['¨'] := '¸';
  Code['Æ'] := 'æ';
  Code['Ç'] := 'ç';
  Code['È'] := 'è';
  Code['É'] := 'é';
  Code['Ê'] := 'ê';
  Code['Ë'] := 'ë';
  Code['Ì'] := 'ì';
  Code['Í'] := 'í';
  Code['Î'] := 'î';
  Code['Ï'] := 'ï';
  Code['Ð'] := 'ð';
  Code['Ñ'] := 'ñ';
  Code['Ò'] := 'ò';
  Code['Ó'] := 'ó';
  Code['Ô'] := 'ô';
  Code['Õ'] := 'õ';
  Code['Ö'] := 'ö';
  Code['×'] := '÷';
  Code['Ø'] := 'ø';
  Code['Ù'] := 'ù';
  Code['Ú'] := 'ú';
  Code['Û'] := 'û';
  Code['Ü'] := 'ü';
  Code['Ý'] := 'ý';
  Code['Þ'] := 'þ';
  Code['ß'] := 'ÿ';
END; {Initialize}

BEGIN {OperationsWithWords}
END. {OperationsWithWords}
