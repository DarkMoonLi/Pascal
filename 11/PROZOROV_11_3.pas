PROGRAM WithoutLast(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN
  IF NOT EOLN
  THEN
    BEGIN
      WHILE NOT EOLN
      DO
        BEGIN
          READ(Ch);
          IF NOT EOLN
          THEN
            WRITE(Ch)
        END
    END;
  WRITELN
END.
