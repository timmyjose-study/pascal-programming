program Student(input, output);
type
  StdRec = record
            Name: String;
            Tam, Eng, Maths: Integer;
          end;

var
  S: StdRec;
  Tot: Integer;
  Avg: Real;

begin
  ReadLn(S.Name);
  ReadLn(S.Tam, S.Eng, S.Maths);
  Tot := S.Tam + S.Eng + S.Maths;
  Avg := Tot / 3;
  WriteLn('Name: ', S.Name, ', total marks: ', Tot, ', average: ', Avg:0:2)
end.