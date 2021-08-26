PROGRAM CountReverse(INPUT, OUTPUT);
USES Count3;
VAR
  Ch, Count1, Count10, Count100: CHAR;
BEGIN {CountReverse}
  START;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Bump
    END;
  Value(Count1, Count10, Count100);
  WRITELN(Count1, Count10, Count100)
END. {CountReverse}