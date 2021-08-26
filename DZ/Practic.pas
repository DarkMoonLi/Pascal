PROGRAM DifferenceCompAndSum(INPUT, OUTPUT);
VAR
  TransNumber: ARRAY[1..7] OF BYTE;
  N, K, I, BufferVariable, Sum, Count: BYTE;
  Composition: INTEGER;
  {��࠭�祭�� �� ���뢠���� � ���� ����, ��⮬� �� �� ������� ��� ᪠���� ��������� ������}
  {��� ������ �����࠭ ��� ��� �᫮��� ����� � 㬥��襭�� �뤥�塞�� ����� ��� ��६����}
BEGIN {DifferenceCompAndSum}
  Composition := 1;
  Sum := 0;
  Count := 0;
  I := 1;
  WRITE('������ �᫮ �� 1 �� 109, �����⥫쭮, � 10-�� ��⥬� ��᫥���: ');
  READ(N);
  WRITE('������ �᫮ K �� 2 �� 10, ��� K-����� ��⥬� ��᫥���: ');
  READ(K);
  {���� ��� ��᢮���� ������ ���ᨢ� ���⪠ �� �������, � ���� ������ ��� ���⪮� �� ������� � ���ᨢ}
  WHILE N > 0
  DO
    BEGIN
      TransNumber[I] := N MOD K;
      N := N DIV K;
      I := I + 1;
      Count := Count + 1
    END;
  {�������㥬 ������ ���ᨢ�, �⮡� ����稫��� ������ � ����, ��� � ��⥬�� ��᫥���}
  FOR I := 1 TO Count DIV 2
  DO
    BEGIN
      BufferVariable := TransNumber[I];
      TransNumber[I] := TransNumber[Count + 1 - I];
      TransNumber[Count + 1 - I] := BufferVariable
    END;
  {������ �ந�������� � �㬬� ��� N � K-�� ��⥬� ��᫥���}
  FOR I := 1 TO Count
  DO
    BEGIN
      IF TransNumber[I] <> 0
      THEN
        BEGIN
          Composition := Composition * TransNumber[I];
          Sum := Sum + TransNumber[I]
        END
    END;
  WRITELN('�������� ����� �ந��������� � �㬬�� ���, �᫠ � K-�� ��⥬� ��᫥���: ', Composition - Sum)
END. {DifferenceCompAndSum}
