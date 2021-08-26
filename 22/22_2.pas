PROGRAM Encryption(INPUT, OUTPUT);
{Переводит символы из INPUT в код согласно Chiper
  и печатает новые символы в OUTPUT}
CONST
  Len = 20;
  CheckAlphabet = ['A' .. 'Z', ' '];
TYPE
  Str = ARRAY [1 .. Len] OF CHAR;
  Chiper = ARRAY [' ' .. 'Z'] OF CHAR;
  Range = 1 .. Len;
  RangeLength = 0 .. Len;
VAR
  Msg: Str;
  Code: Chiper;
  I: Range;
  Length: RangeLength;

PROCEDURE Initialize(VAR Code: Chiper);
{Присвоить Code шифр замены}
VAR 
  ChiperFile: TEXT;
  Letter, CodeLetter: CHAR;
BEGIN {Initialize}
  FOR Letter := ' ' TO 'Z'
  DO
    Code[Letter] := Letter;
  ASSIGN(ChiperFile, 'Chiper.txt');
  RESET(ChiperFile);
  WHILE NOT EOF(ChiperFile)
  DO
    BEGIN
      WHILE NOT EOLN(ChiperFile)
      DO
        BEGIN
          READ(ChiperFile, Letter);
          IF NOT EOLN(ChiperFile)
          THEN
            BEGIN
              READ(ChiperFile, CodeLetter); 
              IF Letter IN CheckAlphabet
              THEN
                Code[Letter] := CodeLetter 
            END         
        END; 
      READLN(ChiperFile)     
    END
END;  {Initialize}

PROCEDURE Encode(VAR S: Str; VAR Length: RangeLength);
{Выводит символы из Code, соответствующие символам из S}
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO Length
  DO
    IF S[Index] IN CheckAlphabet
    THEN
      WRITE(Code[S[Index]])
    ELSE
      WRITE(S[Index]);
  WRITELN
END;  {Encode}

BEGIN {Encryption}
  {Инициализировать Code}
  Initialize(Code);
  WHILE NOT EOF
  DO
    BEGIN
      {читать строку в Msg и распечатать ее}
      I := 1;
      Length := 0;
      WHILE NOT EOLN AND (I <= Len)
      DO
        BEGIN
          Length := Length + 1;
          READ(Msg[I]);
          WRITE(Msg[I]);
          I := I + 1
        END;
      READLN;
      WRITELN;
      {распечатать кодированное сообщение}  
      Encode(Msg, Length)
    END
END.  {Encryption}

