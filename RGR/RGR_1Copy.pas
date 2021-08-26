PROGRAM CountWords(INPUT, OUTPUT);
USES
  OperationsTree;
TYPE
  Sequence = SET OF CHAR;      
VAR
  Ch: CHAR;
  Root: TREE;
  InputFile, OutputFile: TEXT;
  I, Count: INTEGER;
  Sequenced, Symbol: Sequence;
  Row, OneWord: STRING; 

BEGIN {CountWords}
  Ch := '1';
  OneWord := '';
  Root := NIL;
  Sequenced := ['a' .. 'z', 'A' .. 'Z', 'а' .. 'я', 'А' .. 'Я', '-', ''''];
  ASSIGN(InputFile, 'C:\Users\Acer\Desktop\op\RGR\input.txt');
  ASSIGN(OutputFile, 'C:\Users\Acer\Desktop\op\RGR\output.txt');
  RESET(InputFile);
  REWRITE(OutputFile);
  WHILE NOT EOF(InputFile)
  DO 
    BEGIN
      OneWord := '';
      IF NOT EOLN(InputFile) AND (Ch <> ' ')
      THEN
        BEGIN
          READ(InputFile, Ch);
          IF (Ch in Sequenced)
          THEN
            OneWord := OneWord + Ch
        END
      ELSE
        IF EOLN(InputFile)
        THEN
          READLN(InputFile, Ch);
      IF (OneWord <> '') AND (OneWord <> ' ')
      THEN          
        Insert(Root, OneWord);
      OneWord := ''
    END;
  PrintTree(Root, OutputFile);     //слова с дефисами и апострофами
  WRITELN
END. {CountWords}
