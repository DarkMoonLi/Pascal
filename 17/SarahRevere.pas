PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN; 

PROCEDURE MoveWindow(VAR W1, W2, W3, W4: CHAR);
BEGIN {MoveWindow}
  W1 := W2;
  W2 := W3;
  W3 := W4;
  IF NOT EOLN
  THEN
    READ(W4);
  Looking := NOT EOLN
END; {MoveWindow}

PROCEDURE WriteMessageSarah(VAR Land, Sea: BOOLEAN);
BEGIN
  IF Land
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Sea
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END; 

BEGIN {SarahRevere}   
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
  WHILE Looking AND NOT (Land OR Sea)   
  DO
    BEGIN
      MoveWindow(W1, W2, W3, W4);
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd');
      Sea := (W2 = 's') AND (W3 = 'e') AND (W4 = 'a')
    END;
  WriteMessageSarah(Land, Sea)
END.  {SarahRevere} 
