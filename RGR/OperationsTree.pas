UNIT OperationsTree;

INTERFACE

TYPE
  TREE = ^NodeType;
  NodeType = RECORD
               Word: STRING;
               Count: INTEGER;
               LLink, RLink: TREE
             END;  

PROCEDURE Insert(VAR Ptr: TREE; VAR Data: STRING);          {Вставка слова в дерево}

PROCEDURE PrintTree(VAR Ptr: Tree; VAR OutputFile: TEXT);   {Печать всего дерева в OutputFile}

IMPLEMENTATION

PROCEDURE Insert(VAR Ptr: Tree; VAR Data: STRING);
{ Вставка слова в дерево с подсчетом количества повторений }
BEGIN {Insert}
  IF Ptr = NIL
  THEN
    BEGIN 
      NEW(Ptr);
      Ptr^.Word := Data;
      Ptr^.Count := Ptr^.Count + 1;       //мусор нельзя
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL
    END
  ELSE
    IF (Ptr^.Word = Data)
    THEN
      Ptr^.Count := Ptr^.Count + 1
    ELSE
    IF (Ptr^.Word > Data)
    THEN
      Insert(Ptr^.LLink, Data)
    ELSE
      Insert(Ptr^.RLink, Data)
END;  {Insert}

PROCEDURE PrintTree(VAR Ptr: Tree; VAR OutputFile: TEXT);
{Вывод дерева в файл OutputFile(Сперва выводятся левые ветви, узел, а потом правые)}
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  
    BEGIN
      PrintTree(Ptr^.LLink, OutputFile);
      WRITELN(OutputFile, Ptr^.Word, ' ', Ptr^.Count);
      PrintTree(Ptr^.RLink,OutputFile)
    END
END;  {PrintTree}

BEGIN {RGR_Modul}
END. {RGR_Modul}
