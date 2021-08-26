PROGRAM BubbleSort(INPUT, OUTPUT);
{��������� ������ ������ INPUT � OUTPUT}
PROCEDURE CopyFile(VAR File1, File2: TEXT);
VAR 
  Ch: CHAR;
BEGIN {CopyFile}
  REWRITE(File1);
  RESET(File2);
  WHILE NOT EOLN(File2)
  DO
    BEGIN
      READ(File2, Ch);
      WRITE(File1, Ch)
    END;
  WRITELN(File1)
END; {CopyFile}
PROCEDURE SortFile(VAR File1, File2: TEXT);
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
BEGIN {SortFile}
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      { �������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� �������}
      Sorted := 'Y';
      RESET(File1);
      REWRITE(File2);
      READ(File1, Ch1);
      WHILE NOT EOLN(File1)
      DO { �� ������� ���� ��� ������� �������� ��� Ch1, Ch2 }
        IF NOT EOLN(File1)
        THEN
          BEGIN
            READ(File1, Ch2);
            { �������   min(Ch1,Ch2) �  F2, ���������
            ��������������� ������� }
            IF Ch1 <= Ch2
            THEN
              BEGIN
                WRITE(File2, Ch1);
                Ch1 := Ch2
              END
            ELSE
              BEGIN
                WRITE(File2, Ch2);
                Sorted := 'N'
              END
          END
        ELSE
          BEGIN
            READLN(File1);
            WRITELN(File2)
          END;
      WRITELN(File2, Ch1); { ������� ��������� ������ � F2 }
      CopyFile(File1, File2)
    END
END; {SortFile}
VAR
  F1, F2: TEXT;
BEGIN {BubbleSortDown}
  CopyFile(F1, INPUT);
  SortFile(F1, F2);
  CopyFile(OUTPUT, F1)
END.{BubbleSortDown}
