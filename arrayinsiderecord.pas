program ArrayInsideRecord(input, output);
type
  StdRec = record
            Name: String;
            Marks: array[1..2] of Integer;
          end;

var
  Students: array[1..100] of StdRec;
  TotMarks: array[1..100] of Integer;
  N, I: Integer;

begin
  ReadLn(N);
  for I := 1 to N do
    with Students[I] do
      begin
        ReadLn(Name);
        ReadLn(Marks[1], Marks[2]);
        TotMarks[I] := Marks[1] + Marks[2]
      end;

  WriteLn;
  for I := 1 to N do
    with Students[I] do
      begin
        WriteLn('Name    Subject 1    Subject 2    Total');
        WriteLn('  ', Name, '       ', Marks[1], '          ', Marks[2], '            ', TotMarks[I])
      end
end.
