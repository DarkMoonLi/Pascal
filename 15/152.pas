PROGRAM SarahRevere(INPUT, OUTPUT);
{������ ��������� � ��� ��� ���� ��������, � �����������
�� ����, ������ �� ����� ����������� 'land' ��� 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;

PROCEDURE MoveWindow(VAR W1, W2, W3, W4, Looking: CHAR);
BEGIN {MoveWindow}
  WHILE Looking = 'Y'
  DO
    BEGIN{ ������� ����, ��������� ����� ������}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN {����� ������}
        Looking := 'N';
      { �������� ���� ���  'land'}
      IF W1 = 'l'
      THEN
        IF W2 = 'a'
        THEN
          IF W3 = 'n'
          THEN
            IF W4 = 'd'
            THEN {'land' �������}
              Looking := 'L';
      IF W2 = 's'
      THEN
        IF W3 = 'e'
        THEN
          IF W4 = 'a'
          THEN {'sea' �������}
            Looking := 'S';
      IF W2 = 'a'
      THEN
        IF W3 = 'i'
        THEN
          IF W4 = 'r'
          THEN {'air' �������}
            Looking := 'A'
    END
END; {MoveWindow}

PROCEDURE ChangeAnswer(VAR Looking: CHAR);
BEGIN {ChangeAnswer}
  IF Looking = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      IF Looking = 'A'
      THEN
        WRITELN('The British coming by air.')
      ELSE
        WRITELN('Sarah didn''t say')
END; {ChangeAnswer}

BEGIN {SarahRevere}
  {������������� W1,W2,W3,W4,Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  MoveWindow(W1, W2, W3, W4, Looking);
  ChangeAnswer(Looking)
END. {SarahRevere}
