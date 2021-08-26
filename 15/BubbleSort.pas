PROGRAM BubbleSortDown(INPUT, OUTPUT);
{��������� ������ ������ INPUT � OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSortDown}
  { �������� INPUT � F1 }
  REWRITE(F1);
  WHILE NOT EOF(INPUT)
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
      { �������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� �������}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      READ(F1, Ch1);
      WHILE NOT EOF(F1)
      DO { �� ������� ���� ��� ������� �������� ��� Ch1, Ch2 }
        IF NOT EOLN(F1)
        THEN
          BEGIN
            READ(F1, Ch2);
            { �������   min(Ch1,Ch2) �  F2, ���������
            ��������������� ������� }
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
        WRITE(F2, Ch1); { ������� ��������� ������ � F2 }  
      { �������� F2 � F1 }
      RESET(F2);
      REWRITE(F1);
      WHILE NOT EOF(F2)
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
  { �������� F1 � OUTPUT }
  RESET(F1);
  WHILE NOT EOF(F1)
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
