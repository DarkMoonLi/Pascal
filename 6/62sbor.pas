DP1
PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN
  {������� INPUT �� Odds � Evens}
  {������� Odds � OUTPUT}
  {������� Evens � OUTPUT}
END.
DP1

DP2
BEGIN{������� INPUT �� Odds � Evens}
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    {���������� Ch �� ��������� Next, ���������� Next}
  WRITELN(Odds, '#');
  WRITELN(Evens, '#');
END{������� INPUT �� Odds � Evens}  
DP2

DP2.1
  BEGIN{���������� Ch �� ��������� Next, ���������� Next}
    IF Next = 'O'
    THEN
      BEGIN
        WRITE(Odds, Ch);
        Next := 'E'
      END
    ELSE
      BEGIN
        WRITE(Evens, Ch);
        Next := 'E'
      END;
    READ(INPUT, Ch)
  END;{���������� Ch �� ��������� Next, ���������� Next}
DP2.1

DP3
  BEGIN{������� Odds � OUTPUT}
    RESET(Odds);
    WHILE NOT EOLN
    DO
      BEGIN
        READ(Odds, Ch);
        WRITE(OUTPUT, Ch)
      END;
    WRITELN;
  END{������� Odds � OUTPUT}
DP3

DP4
  BEGIN{������� Evens � OUTPUT}
    RESET(Evens);
    WHILE NOT EOLN
    DO
      BEGIN
        READ(Evens, Ch);
        WRITE(OUTPUT, Ch)
      END;
    WRITELN
  END{������� Evens � OUTPUT}
DP4