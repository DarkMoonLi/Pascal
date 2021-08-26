PROGRAM Encryption(INPUT, OUTPUT);
{��������� ������� �� INPUT � ��� �������� Chiper 
  � �������� ����� ������� � OUTPUT}
CONST
  Len = 20;
  Alphabet = ['A' .. 'Z', ' '];
TYPE
  LengthStr = 0 .. Len;
  Str = ARRAY [1 .. Len] OF ' ' .. 'Z';
  Chiper = ARRAY [' ' .. 'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  I: LengthStr;

PROCEDURE Initialize(VAR Code: Chiper);
{��������� Code ���� ������}
VAR
  CodeFile: TEXT;
  RealLetter, CodeLetter: CHAR;
BEGIN {Initialize}
  FOR RealLetter := ' ' TO 'Z'
  DO
    Code[RealLetter] := RealLetter;
  ASSIGN(CodeFile, 'alphabet.txt');
  RESET(CodeFile);
  WHILE NOT EOF(CodeFile)
  DO
    BEGIN
      WHILE NOT EOLN(CodeFile)
      DO
        BEGIN
          IF NOT EOLN(CodeFile)
          THEN
            READ(CodeFile, RealLetter);
          IF NOT EOLN(CodeFile)
          THEN
            BEGIN
              READ(CodeFile, CodeLetter); 
              IF RealLetter IN Alphabet
              THEN
                Code[RealLetter] := CodeLetter 
            END         
        END; 
      READLN(CodeFile)     
    END  
END;  {Initialize}

PROCEDURE Encode(VAR Msg: Str; VAR Code: Chiper; VAR Msglength: LengthStr);
{������� ������� �� Code, ��������������� �������� �� S}
VAR
  I: 1 .. Len;
BEGIN {Encode}
  FOR I := 1 TO Msglength
  DO
    IF Msg[I] IN Alphabet
    THEN
      WRITE(Code[Msg[I]])
    ELSE
      WRITE(Msg[I]);
  WRITELN
END;  {Encode}
 
BEGIN {Encryption}
  {���������������� Code}
  Initialize(Code);
  WHILE NOT EOF
  DO
    BEGIN
      {������ ������ � Msg � ����������� ��}
      I := 0;
      WHILE NOT EOLN AND (I < Len)
      DO
        BEGIN
          I := I + 1;
          READ(Msg[I]);
          WRITE(Msg[I])
        END;
      READLN;
      WRITELN;
      {����������� ������������ ���������}
      Encode(Msg, Code, I)
    END
END.  {Encryption}
