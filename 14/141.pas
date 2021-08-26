PROGRAM ReverseString(INPUT, OUTPUT);
PROCEDURE Reverse(VAR F: TEXT);
VAR
  Ch: CHAR;
BEGIN {Reverse}
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      Reverse(F);
      WRITE(Ch)
    END
END; {Reverse}
BEGIN {ReverseString}
  Reverse(INPUT);
  WRITELN
END. {ReverseString}
