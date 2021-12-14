program StudentPolymorphism(input, output);
type
  StudentT = object
              StdName: String;
              StdNo: Integer;
              constructor Init;
              procedure GetName;
              procedure GetStdNo;
              procedure Display;
            end;

  ResultT = object(StudentT)
              TotMarks: Integer;
              constructor Init;
              procedure GetTotMarks;
              procedure Display;
            end;

constructor StudentT.Init;
begin
  StdName := '';
  StdNo := 0
end;

procedure StudentT.GetName;
begin
  Write('Enter name: ');
  ReadLn(StdName)
end;

procedure StudentT.GetStdNo;
begin
  Write('Enter exam no.: ');
  ReadLn(StdNo)
end;

procedure StudentT.Display;
begin
  WriteLn('Name: ', StdName);
  WriteLn('Exam No.: ', StdNo)
end;

constructor ResultT.Init;
begin
  StudentT.Init;
  TotMarks := 0
end;

procedure ResultT.GetTotMarks;
begin
  Write('Enter total marks: ');
  ReadLn(TotMarks)
end;

procedure ResultT.Display;
var
  Grade: ShortString;
begin
  if TotMarks < 300 then
    Grade := 'Second'
  else
    Grade := 'First';

  StudentT.Display;
  WriteLn('Total marks: ', TotMarks);
  WriteLn('Grade: ', Grade)
end;

var
  Result1: ResultT;

begin
  Result1.Init;
  Result1.GetName;
  Result1.GetStdNo;
  Result1.GetTotMarks;
  Result1.Display
end.
