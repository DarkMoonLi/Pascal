PROGRAM DifferenceCompAndSum(INPUT, OUTPUT);
VAR
  TransNumber: ARRAY[1..7] OF BYTE;
  N, K, I, BufferVariable, Sum, Count: BYTE;
  Composition: INTEGER;
  {Ограничения не учитываются в виде кода, потому что по заданию нам сказаны диапазоны данных}
  {Тип данных подобран для под условия задачи и уменьшения выделяемой памяти под переменные}
BEGIN {DifferenceCompAndSum}
  Composition := 1;
  Sum := 0;
  Count := 0;
  I := 1;
  WRITE('Введите число от 1 до 109, включительно, в 10-ой системе счисления: ');
  READ(N);
  WRITE('Введите число K от 2 до 10, где K-номер системы счисления: ');
  READ(K);
  {Цикл для присвоения элементу массива остатка от деления, то есть запись всех остатков от деления в массив}
  WHILE N > 0
  DO
    BEGIN
      TransNumber[I] := N MOD K;
      N := N DIV K;
      I := I + 1;
      Count := Count + 1
    END;
  {Инвертируем элементы массива, чтобы получилась запись с конца, как в системах счисления}
  FOR I := 1 TO Count DIV 2
  DO
    BEGIN
      BufferVariable := TransNumber[I];
      TransNumber[I] := TransNumber[Count + 1 - I];
      TransNumber[Count + 1 - I] := BufferVariable
    END;
  {Подсчет произведения и суммы цифр N в K-ой системе счисления}
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
  WRITELN('Разность между произведением и суммой цифр, числа в K-ой системе счисления: ', Composition - Sum)
END. {DifferenceCompAndSum}
