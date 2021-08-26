PROGRAM BubbleSortDown(INPUT, OUTPUT);
{Сортируем первую строку INPUT в OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSortDown}
  { Копируем INPUT в F1 }
  REWRITE(F1);
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      IF NOT EOLN(INPUT)
      THEN
        BEGIN
          READ(INPUT, Ch);
          WRITE(F1, Ch)
        END
      ELSE
        BEGIN
          READLN(INPUT);
          WRITELN(F1)
        END      
    END;
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      { Копируем F1 в F2,проверяя отсортированность
       и переставляя первые соседние символы по порядку}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      READ(F1, Ch1);
      WHILE NOT EOLN(F1)
      DO { По крайней мере два символа остается для Ch1,Ch2 }
        IF NOT EOLN(F1)
        THEN
          BEGIN
            READ(F1, Ch2);
            { Выводим   min(Ch1,Ch2) в  F2, записывая
            отсортированные символы }
            IF Ch1 <= Ch2
            THEN
              BEGIN
                WRITE(F2, Ch1);
                Ch1 := Ch2
              END
            ELSE
              BEGIN
                WRITE(F2, Ch2);
                Sorted := 'N'
              END
          END
        ELSE
          BEGIN
            READLN(F1);
            WRITELN(F2)
          END;
        WRITE(F2, Ch1); { Выводим последний символ в F2 }  
      { Копируем F2 в F1 }
      RESET(F2);
      REWRITE(F1);
      WHILE NOT EOLN(F2)
      DO
        BEGIN
          IF NOT EOLN(F2)
          THEN
            BEGIN
              READ(F2, Ch);
              WRITE(F1, Ch)
            END
          ELSE
            BEGIN
              READLN(F2);
              WRITELN(F1)
            END
        END
    END;
  { Копируем F1 в OUTPUT }
  RESET(F1);
  WHILE NOT EOLN(F1)
  DO
    IF NOT EOLN(F1)
    THEN
      BEGIN
        READ(F1, Ch);
        WRITE(OUTPUT, Ch)
      END
    ELSE
      BEGIN
        READLN(F1);
        WRITELN(OUTPUT)
      END
END. {BubbleSortDown}
