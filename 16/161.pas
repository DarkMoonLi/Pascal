PROGRAM CountReverse(INPUT, OUTPUT);
USES Count3;
VAR
  Ch, Ch1, Ch2, Ch3, Count1, Count10, Count100: CHAR;
BEGIN {CountReverse}
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  START;
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(Ch);
      Ch3 := Ch2;
      Ch2 := Ch1;
      Ch1 := Ch;
      IF ((Ch2 < Ch1) AND (Ch2 < Ch3)) OR ((Ch2 > Ch1) AND (Ch2 > Ch3))
      THEN
        Bump  
    END;
  Value(Count100, Count10, Count1);
  WRITELN(Count100, Count10, Count1)
END. {CountReverse}
