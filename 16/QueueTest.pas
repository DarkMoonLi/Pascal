PROGRAM QueueTest(INPUT, OUTPUT);
USES Queue;
VAR
  Ch: CHAR;
  F1: TEXT;
BEGIN {QueueTest}
  EmptyQ();
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      AddQ(Ch)
    END;
  WriteQ();
  HeadQ(Ch);
  DelQ();
  WriteQ();
  Ch := ':';
  AddQ(Ch);
  WriteQ();
  DelQ();
  WriteQ()
END. {QueueTest}
