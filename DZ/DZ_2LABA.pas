PROGRAM CountTheCharacters (INPUT, OUTPUT);
VAR
  Ch: CHAR;
  Count: INTEGER;
BEGIN
  Count:= 0;
  READLN(Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      Count:= Count + 1;
      READ(Ch)
    END;
IF Count < 999
THEN
  WRITELN('Number of characters is ', Count-1)
ELSE
  WRITELN('variable overflowed')
END.
