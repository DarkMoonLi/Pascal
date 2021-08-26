PROGRAM Prime(INPUT, OUTPUT);
Const
  Min = 2;
  Max = 16;
TYPE
  SetNumbers = SET OF Min..Max;
VAR
  NumberPosition, PrimeNumber: INTEGER;
  SetPrimeNumber: SetNumbers;
BEGIN {Prime}
  SetPrimeNumber := [Min .. Max];
  NumberPosition := Min;
  PrimeNumber := Min;
  WHILE (PrimeNumber <= Max)
  DO
    BEGIN
      WHILE (NumberPosition <= Max)
      DO
        BEGIN
          SetPrimeNumber := SetPrimeNumber - [NumberPosition];
          NumberPosition := NumberPosition + PrimeNumber
        END;
      WRITE(PrimeNumber, ' ');
      WHILE (NOT(PrimeNumber IN SetPrimeNumber)) AND (PrimeNumber <= Max)
      DO
        PrimeNumber := PrimeNumber + 1;
      NumberPosition := PrimeNumber
    END
END. {Prime}

