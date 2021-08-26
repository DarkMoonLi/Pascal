PROGRAM CharToNumber(INPUT, OUTPUT);
VAR
  Val: INTEGER;

PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR 
  Ch: CHAR;
BEGIN {ReadDigit}
  READ(F, Ch);
  IF (Ch = '0') THEN D := 0 ELSE
  IF (Ch = '1') THEN D := 1 ELSE
  IF (Ch = '2') THEN D := 2 ELSE
  IF (Ch = '3') THEN D := 3 ELSE
  IF (Ch = '4') THEN D := 4 ELSE
  IF (Ch = '5') THEN D := 5 ELSE
  IF (Ch = '6') THEN D := 6 ELSE
  IF (Ch = '7') THEN D := 7 ELSE
  IF (Ch = '8') THEN D := 8 ELSE
  IF (Ch = '9') THEN D := 9 
  ELSE 
    D := -1 
END; {ReadDigit}

PROCEDURE ReadNumber(VAR F: TEXT; VAR Result: INTEGER);
VAR
  Ch: CHAR;
  Digit: INTEGER;
  IntegerOverflow, RemainsOverflow: INTEGER;                                                        
BEGIN {ReadNumber}
  IntegerOverflow := MAXINT DIV 10;
  RemainsOverflow := MAXINT MOD 10;
  Result := 0;
  Digit := 0;
  WHILE (Digit <> -1) AND (Result <> -1)
  DO
    BEGIN
      IF (Result < IntegerOverflow) OR ((Result = IntegerOverflow) AND (Digit <= RemainsOverflow))
      THEN
        BEGIN
          Result := Result * 10 + Digit;
          ReadDigit(F, Digit)
        END
      ELSE
        Result := -1
    END
END; {ReadNumber}

BEGIN {CharToNumber}
  WRITELN(MAXINT);
  ReadNumber(INPUT, Val);
  WRITELN(Val)
END. {CharToNumber}
