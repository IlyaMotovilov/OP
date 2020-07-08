PROGRAM InsertSort2 (INPUT, OUTPUT);
TYPE 
  NodePtr = ^Node;
  Node = RECORD
           Next: NodePtr;
           Key: CHAR
         END;
VAR
  FirstPtr, NewPtr, Curr, Prev: NodePtr;
  Found: BOOLEAN;
BEGIN {InsertSort2}
  FirstPtr := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      NEW(NewPtr);
      READ(NewPtr^.Key);
      Prev := NIL;{2.1. ��������� NewPtr � ���������� �����}
      Curr := FirstPtr;
      Found := FALSE;{2.1.1 ������ �������� Prev � Curr, ����� ��� Prev^.Key <= NewPtr^.Key <= Curr^.Key}
      WHILE (Curr <> NIL) AND NOT Found
      DO
        IF NewPtr^.Key > Curr^.Key
        THEN
          BEGIN
            Prev := Curr;
            Curr := Curr^.Next;
          END
        ELSE
          Found := TRUE; {2.1.1 ������ �������� Prev � Curr, ����� ��� Prev^.Key <= NewPtr^.Key <= Curr^.Key}
      NewPtr^.Next := Curr;
      IF Prev = NIL 
      THEN
        FirstPtr := NewPtr
      ELSE
        Prev^.Next := NewPtr;{2.1. ��������� NewPtr � ���������� �����}
    END;
  NewPtr := FirstPtr;{2.2. ������ �������� ������� � FirstPtr^.Key}
  WHILE NewPtr <> NIL
  DO
    BEGIN
      WRITE(NewPtr^.Key);
      NewPtr := NewPtr^.Next
    END{2.2. ������ �������� ������� � FirstPtr^.Key}
END.  {InsertSort2}
