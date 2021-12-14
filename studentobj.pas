program StudentObj(input, output);
type
  Student = object
              StdName: String;
              StdNo: Integer;
              Tam, Eng, Mat: Integer;
              procedure ReadStudent;
              procedure PrintStudent;
            end;

procedure Student.ReadStudent;
begin
  Write('Enter student name: ');
  ReadLn(StdName);
  Write('Enter student exam no.: ');
  ReadLn(StdNo);
  Write('Enter marks in Tamil, English, and Mathematics: ');
  ReadLn(Tam, Eng, Mat)
end;

procedure Student.PrintStudent;
var
  TotMarks: Integer;
begin
  TotMarks := Tam + Eng + Mat;
  WriteLn('Student ', StdName, ' (Exam No: ', StdNo, ' scored ', Tam, ' in Tamil, ', Eng, ' in English, and ', Mat, ' in Maths for a total of ', TotMarks)
end;

var
  Student1: Student;

begin
  Student1.ReadStudent;
  Student1.PrintStudent;
end.
  