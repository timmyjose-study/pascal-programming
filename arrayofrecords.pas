program ArrayOfRecords(input, output);
type
  StdRec = record
            Name: String;
            Tam, Eng, Maths: Integer;
          end;

  Arr = array[1..100] of StdRec;

var
  A: Arr;
  N, I: Integer;

procedure ReadStudent(var S: StdRec);
begin
  with S do
    begin
      ReadLn(Name);
      ReadLn(Tam, Eng, Maths)
    end
end;

procedure DisplayStudent(S: StdRec);
var
  Tot: Integer;
  Avg: Real;
begin
  with S do
    begin
      Tot := Tam + Eng + Maths;
      Avg := Tot / 3;
      WriteLn('Name: ', Name, ', Total Marks: ', Tot, ', Average: ', Avg:0:3)
    end
end;

begin
  ReadLn(N);
  for I := 1 to N do
    ReadStudent(A[I]);

  for I := 1 to N do
    DisplayStudent(A[I])
end.
