UNIT OperationsWithWords;

INTERFACE
LowRegister: ARRAY['A' .. 'Z', '�' .. '�'] OF CHAR;
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
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
  Code['�'] := '�';
END; {Initialize}

BEGIN {OperationsWithWords}
END. {OperationsWithWords}
