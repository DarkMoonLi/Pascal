PROGRAM CountChar(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  Ones, Tens, Hundreds, Crowded: CHAR;
PROCEDURE CountOnes;
BEGIN{CountOnes}
  IF Ones = '0' THEN Ones := '1' ELSE
  IF Ones = '1' THEN Ones := '2' ELSE
  IF Ones = '2' THEN Ones := '3' ELSE
  IF Ones = '3' THEN Ones := '4' ELSE
  IF Ones = '4' THEN Ones := '5' ELSE
  IF Ones = '5' THEN Ones := '6' ELSE
  IF Ones = '6' THEN Ones := '7' ELSE
  IF Ones = '7' THEN Ones := '8' ELSE
  IF Ones = '8' THEN Ones := '9' ELSE
  IF Ones = '9' THEN Ones := '0';
END;{CountOnes}

PROCEDURE CountTens;
BEGIN{CountTens}
  IF Tens = '0' THEN Tens := '1' ELSE
  IF Tens = '1' THEN Tens := '2' ELSE
  IF Tens = '2' THEN Tens := '3' ELSE
  IF Tens = '3' THEN Tens := '4' ELSE
  IF Tens = '4' THEN Tens := '5' ELSE
  IF Tens = '5' THEN Tens := '6' ELSE
  IF Tens = '6' THEN Tens := '7' ELSE
  IF Tens = '7' THEN Tens := '8' ELSE
  IF Tens = '8' THEN Tens := '9' ELSE
  IF Tens = '9' THEN Tens := '0';
END;{CountTens}

PROCEDURE CountHundreds;
BEGIN{CountHundreds}
  IF Hundreds = '0' THEN Hundreds := '1' ELSE
  IF Hundreds = '1' THEN Hundreds := '2' ELSE
  IF Hundreds = '2' THEN Hundreds := '3' ELSE
  IF Hundreds = '3' THEN Hundreds := '4' ELSE
  IF Hundreds = '4' THEN Hundreds := '5' ELSE
  IF Hundreds = '5' THEN Hundreds := '6' ELSE
  IF Hundreds = '6' THEN Hundreds := '7' ELSE
  IF Hundreds = '7' THEN Hundreds := '8' ELSE
  IF Hundreds = '8' THEN Hundreds := '9' ELSE
  IF Hundreds = '9' THEN Crowded := 'F' {F = FALSE, because nunber <= 999}
END;{CountHundreds}

BEGIN{CountChar}
  {Reading of row and count simbols in cycle with procedure}
  Ones := '0';
  Tens := '0';
  Hundreds := '0';
  Crowded := 'T';
  READ(Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      CountOnes;
      IF Ones = '0'
      THEN
        BEGIN
        CountTens;
        IF Tens = '0'
        THEN
          CountHundreds;
        END;
      READ(Ch);
    END;
  IF Crowded = 'T'
  THEN
    WRITELN('Number of characters is ', Hundreds, Tens, Ones)
  ELSE
    WRITELN('Number of characters is greater then 999')
END.{CountChar}
