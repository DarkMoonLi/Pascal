PROGRAM CountWords(INPUT, OUTPUT);
USES
  OperationsTree;
  OperationsWithWords;
TYPE
  Sequence = SET OF CHAR;    
VAR
  Ch: CHAR;
  Root: TREE;
  InputFile, OutputFile: TEXT;
  I, Count: INTEGER;
  Sequenced, Symbol: Sequence;
  Row, OneWord: STRING;
  LowRegister: ARRAY['A' .. 'Z', 'À' .. 'ß'] OF CHAR;

BEGIN {CountWords}
  Ch := '1';
  OneWord := '';
  Root := NIL;
  Initialize(LowRegister);
  Sequenced := ['a' .. 'z', 'A' .. 'Z', 'À' .. 'ß', 'à' .. 'ÿ'];
  ASSIGN(InputFile, 'C:\Users\Acer\Desktop\op\RGR\input.txt');
  ASSIGN(OutputFile, 'C:\Users\Acer\Desktop\op\RGR\output.txt');
  RESET(InputFile);
  REWRITE(OutputFile);
  WHILE NOT EOF(InputFile)
  DO
    BEGIN
      REPEAT                     
        READ(InputFile, Ch);
        IF Ch in Sequenced
        THEN
          OneWord := OneWord + Ch
      UNTIL (EOLN(InputFile)) OR (Ch = ' ');
      IF (OneWord <> '') AND (OneWord <> ' ')
      THEN          
        Insert(Root, OneWord);
      OneWord := ''
    END;
  PrintTree(Root, OutputFile);
  WRITELN
END. {CountWords}
