program WithStudent(input, output);
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
  with S do
    begin
      ReadLn(Name);
      ReadLn(Tam, Eng, Maths);
      Tot := Tam + Eng + Maths;
      Avg := Tot / 3;
      WriteLn('Name: ', Name, ', total marks: ', Tot, ', average: ', Avg:0:2)
    end
end.
