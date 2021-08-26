PROGRAM RCopyString(INPUT, OUTPUT);
PROCEDURE RCopy(VAR F: TEXT);
VAR
  Ch: CHAR;
BEGIN {RCopy}
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      WRITE(Ch);
      RCopy(F)
    END
END; {RCopy}
BEGIN {RCopyString}
  RCopy(INPUT);
  WRITELN
END. {RCopyString}
