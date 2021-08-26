PROGRAM IfSort3(INPUT, OUTPUT);
{Сортирует 3-строку из INPUT в OUTPUT}
VAR
  Ch1, Ch2, Ch3, Ch11, Ch22, Ch33: CHAR;
BEGIN {IfSort3}
  READ(Ch1, Ch2, Ch3);
  Ch11 := Ch1;
  Ch22 := Ch2;
  Ch33 := Ch3;
  {Сортируем Ch1, Ch2, Ch3 в OUTPUT}
  IF Ch1 < Ch2
  THEN
    {Ch1 < Ch2:сортируем Ch1, Ch2, Ch3 в OUTPUT}
    IF Ch2 < Ch3
    THEN {Ch1 < Ch2 < Ch3:сортируем Ch1, Ch2, Ch3 в OUTPUT}
      BEGIN
        Ch1 := Ch11;
        Ch2 := Ch22;
        Ch3 := Ch33
      END
    ELSE
      {Ch1 < Ch2, Ch3 <= Ch2:сортируем Ch1, Ch2, Ch3 в OUTPUT}
      IF Ch1 < Ch3
      THEN {Ch1 < Ch3 <= Ch2:сортируем Ch1, Ch2, Ch3 в OUTPUT}
        BEGIN
          Ch1 := Ch11;
          Ch2 := Ch33;
          Ch3 := Ch22
        END
      ELSE {Ch3 <= Ch1 < Ch2:сортируем Ch1, Ch2, Ch3 в OUTPUT}
        BEGIN
          Ch1 := Ch33;
          Ch2 := Ch11;
          Ch3 := Ch22
        END
  ELSE
    {Ch2 <= Ch1:сортируем Ch1, Ch2, Ch3 в OUTPUT}
    IF Ch1 < Ch3
    THEN {Ch2 <= Ch1 < Ch3:сортируем Ch1, Ch2, Ch3 в OUTPUT}
      BEGIN
        Ch1 := Ch22;
        Ch2 := Ch11;
        Ch3 := Ch33
      END
    ELSE
      {Ch2 <= Ch1, Ch3 <= Ch1:сортируем Ch1, Ch2, Ch3 в OUTPUT}
      IF Ch2 < Ch3
      THEN {Ch2 < Ch3 <= Ch1:сортируем Ch1, Ch2, Ch3 в OUTPUT}
        BEGIN
          Ch1 := Ch22;
          Ch2 := Ch33;
          Ch3 := Ch11
        END
      ELSE {Ch3 <= Ch2 <= Ch1:сортируем Ch1, Ch2, Ch3 в OUTPUT}
        BEGIN
          Ch1 := Ch33;
          Ch2 := Ch22;
          Ch3 := Ch11
        END;
  END;
  WRITELN('Входные данные (', Ch11,  Ch22, Ch33, ') сортируются в (', Ch1, Ch2, Ch3, ')')
END. {IfSort3}
