PROGRAM PseudographicOutput(INPUT, OUTPUT);
CONST
  Min = 1;
  Max = 25;
  LengthLine = 5;
  Symbol = '#';
  
TYPE
  PositionLetter = SET OF Min..Max;
   
VAR
  Letter: CHAR;
  LetterType: PositionLetter;
  
PROCEDURE PrintPseudographicChar(LetterType: PositionLetter);
VAR
  Index: INTEGER;
BEGIN {PrintPseudographicChar}
  FOR Index := Min TO Max
  DO
    BEGIN
      IF Index in LetterType
      THEN
        WRITE(Symbol)
      ELSE
        WRITE(' ');
      IF (Index MOD LengthLine = 0)
      THEN
        WRITELN
    END 
END; {PrintPseudographicChar}

FUNCTION SelectOption(Letter: CHAR): PositionLetter;
BEGIN {SelectOption}
  LetterType := [];
  CASE Letter OF
    'H': LetterType := [1, 5, 6, 10, 11..15, 16, 20, 21, 25];
    'L': LetterType := [1, 6, 11, 16, 21..25];
    'I': LetterType := [1..5, 8, 13, 18, 21..25];
    'F': LetterType := [1..5, 6, 11..15, 16, 21];
    'T': LetterType := [1..5, 8, 13, 18, 23];
    'E': LetterType := [1..5, 6, 11..15, 16, 21..25]; 
    'Z': LetterType := [1..5, 9, 13, 17, 21..25];
    'X': LetterType := [1, 5, 7, 9, 13, 17, 19, 21, 25];
    'M': LetterType := [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
    'Y': LetterType := [1, 5, 7, 9, 13, 18, 23]
  END;
  SelectOption := LetterType
END; {SelectOption}

BEGIN {PseudographicOutput}
  WRITE('Enter a char(H, L, I, F, T, E, Z, X, M, Y):');
  READLN(Letter);
  SelectOption(Letter);
  IF (LetterType <> [])
  THEN 
    PrintPseudographicChar(LetterType) 
  ELSE
    WRITELN('Invalid value.')
END. {PseudographicOutput}
