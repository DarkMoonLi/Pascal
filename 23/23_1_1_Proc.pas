PROGRAM InsertionSort(INPUT, OUTPUT);
{Сортирует символы из INPUT}
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

PROCEDURE WriteList(First: Interval);   {только локальные или только глобальные}
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
	  {Найти значения Prev и Curr, если существуют такие что
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
    IF Prev = 0  {Первый элемент в списке}
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
      {Помещать запись в список, если позволяет пространство,
      иначе игнорировать и сообщать об ошибке}
      Index := Index + 1;
      IF Index > Max
      THEN
        BEGIN
          READ(Extra);
          WRITELN('Сообщение содержит: ', Extra, '. Игнорируем.')
        END
      ELSE
        BEGIN
          READ(Arr[Index].Key);
          {Включение Arr[Index] в связанный список}
          SearchElement(Index)
        END
    END; {WHILE}
    {Печать списка начиная с Arr[First]}
  WriteList(First)
END.  {InsertionSort}
