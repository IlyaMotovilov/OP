PROGRAM Prime(INPUT, OUTPUT);
CONST
  Min = 2;
  Max = 100; 
TYPE
  Diapason = Min .. Max; 
VAR 
  InSet, OutSet: SET OF Diapason;
  I, Top: Diapason;
BEGIN
  InSet := [Min .. Max];
  OutSet := [];
  REPEAT
    Top := Max;
    FOR I := Min TO Max 
    DO
      IF (I IN InSet) AND (I < Top) 
      THEN
        Top := I;
    FOR I := Min TO Max 
    DO
      IF (I IN Inset) AND (I MOD Top=0) 
      THEN 
        Inset := InSet - [I];
  OutSet := OutSet + [Top];
  UNTIL InSet = [];
  WRITE('Простые числа в диапазоне от ', Min, ' до ', Max, ': ');
  FOR I := Min TO Max 
  DO
    BEGIN
      IF I IN OutSet 
      THEN
        IF I <> Top
        THEN
          WRITE(I, ',')
        ELSE
          WRITELN(I)
    END  
END.
