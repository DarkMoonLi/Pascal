DP1
PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN
  {Разбить INPUT на Odds и Evens}
  {Выводим Odds в OUTPUT}
  {Выводим Evens в OUTPUT}
END.
DP1

DP2
BEGIN{Разбить INPUT на Odds и Evens}
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    {Записывать Ch по состоянию Next, переключив Next}
  WRITELN(Odds, '#');
  WRITELN(Evens, '#');
END{Разбить INPUT на Odds и Evens}  
DP2

DP2.1
  BEGIN{Записывать Ch по состоянию Next, переключив Next}
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
  END;{Записывать Ch по состоянию Next, переключив Next}
DP2.1

DP3
  BEGIN{Выводим Odds в OUTPUT}
    RESET(Odds);
    WHILE NOT EOLN
    DO
      BEGIN
        READ(Odds, Ch);
        WRITE(OUTPUT, Ch)
      END;
    WRITELN;
  END{Выводим Odds в OUTPUT}
DP3

DP4
  BEGIN{Выводим Evens в OUTPUT}
    RESET(Evens);
    WHILE NOT EOLN
    DO
      BEGIN
        READ(Evens, Ch);
        WRITE(OUTPUT, Ch)
      END;
    WRITELN
  END{Выводим Evens в OUTPUT}
DP4