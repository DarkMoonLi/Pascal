PROGRAM InsertionSort(INPUT, OUTPUT);
{������� ᨬ���� �� INPUT}
CONST
  Max = 16;
  ListEnd = 0;
TYPE
  Interval = 0 .. Max;
  RecArray = ARRAY [1 .. Max] OF
               RECORD
                 Key: CHAR;
                 Next: Interval
               END;
VAR
  Arr: RecArray;
  First, Index: Interval;
  Prev, Curr: Interval;
  Extra: CHAR;

PROCEDURE WriteList(First: Interval);   {⮫쪮 ������� ��� ⮫쪮 ��������}
BEGIN {WriteList}
  Index := First;
  WHILE Index <> ListEnd
  DO
    BEGIN
      WRITE(Arr[Index].Key);
      Index := Arr[Index].Next
    END;
  WRITELN
END; {WriteList}

PROCEDURE SearchElement(VAR Index: Interval);
	  {���� ���祭�� Prev � Curr, �᫨ �������� ⠪�� ��
          Arr[Prev].Key  <= Arr[Index].Key <= Arr[Curr].Key}
VAR
  Found: BOOLEAN;
  Curr: Interval;
BEGIN {SearchElement}
  Prev := 0;
  Curr := First;
  Found := FALSE;
  WHILE (Curr <> 0) AND NOT Found
  DO
    IF Arr[Index].Key > Arr[Curr].Key
    THEN
      BEGIN
        Prev := Curr;
        Curr := Arr[Curr].Next
      END
    ELSE
      Found := True;
      Arr[Index].Next := Curr;
    IF Prev = 0  {���� ����� � ᯨ᪥}
    THEN
      First := Index
    ELSE
      Arr[Prev].Next := Index
END; {SearchElement}

BEGIN {InsertionSort}
  First := 0;
  Index := 0;
  WHILE NOT EOLN
  DO
    BEGIN
      {������� ������ � ᯨ᮪, �᫨ �������� ����࠭�⢮,
      ���� �����஢��� � ᮮ���� �� �訡��}
      Index := Index + 1;
      IF Index > Max
      THEN
        BEGIN
          READ(Extra);
          WRITELN('����饭�� ᮤ�ন�: ', Extra, '. ������㥬.')
        END
      ELSE
        BEGIN
          READ(Arr[Index].Key);
          {����祭�� Arr[Index] � �易��� ᯨ᮪}
          SearchElement(Index)
        END
    END; {WHILE}
    {����� ᯨ᪠ ��稭�� � Arr[First]}
  WriteList(First)
END.  {InsertionSort}
