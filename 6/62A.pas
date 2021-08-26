PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN {Split}
  {Разбить INPUT на Odds и Evens}
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN {Записывать Ch по состоянию Next, переключив Next}
      WRITE(Ch, '-', Next, ' ');
      IF Next = 'O'
      THEN
        BEGIN
          WRITE(Odds, Ch);
          Next := 'E'
        END
      ELSE
        BEGIN
          WRITE(Evens, Ch);
          Next := 'O'
        END;
      READ(INPUT, Ch)
    END;{Записывать Ch по состоянию Next, переключив Next}
  WRITELN(Odds, '#');
  WRITELN(Evens, '#');
  {Выводим Odds в OUTPUT}
  {Выводим Evens в OUTPUT}
END. {Split}
