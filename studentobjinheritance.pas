program StudentObjectInheritance(input, output);
type
  StudentT = object
              StdName: String;
              StdNo: Integer;
              constructor Init;
              procedure GetName;
              procedure GetStdNo;
            end;

  ResultT = object (StudentT)
            TotMarks: Integer;
            procedure GetMarks;
            procedure PrintGrade;
          end;

constructor StudentT.Init;
begin
  StdName := '';
  StdNo := 0
end;

procedure StudentT.GetName;
begin
  Write('Enter student name: ');
  ReadLn(StdName)
end;

procedure StudentT.GetStdNo;
begin
  Write('Enter student''s exam number: ');
  ReadLn(StdNo)
end;

procedure ResultT.GetMarks;
begin
  Write('Enter student''s total marks: ');
  ReadLn(TotMarks)
end;

procedure ResultT.PrintGrade;
var
  Grade: ShortString;
begin
  if TotMarks < 300 then
    Grade := 'Second'
  else
    Grade := 'First';

  WriteLn('StudentT Name: ', StdName);
  WriteLn('Exam No.: ', StdNo);
  WriteLn('Total marks: ', TotMarks);
  WriteLn('Grade: ', Grade)
end;

var
  Result1: ResultT;

begin
  Result1.GetName;
  Result1.GetStdNo;
  Result1.GetMarks;
  Result1.PrintGrade
end.


