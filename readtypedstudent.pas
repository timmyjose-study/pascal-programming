program ReadTypedStudent(input, output);
type
  StdRec = record
            Name: String;
            ExamNo: Integer;
            Tam: Integer;
            Eng: Integer;
            Maths: Integer;
          end;

var
  Student: StdRec;
  InfileName: String;
  Infile: File of StdRec;
  Tot: Integer;
  Avg: Real;

begin
  WriteLn('Which file to read?');
  ReadLn(InfileName);

  Assign(Infile, InfileName);
  Reset(Infile);

  while not Eof(Infile) do
    begin
      with Student do
        begin
          Read(Infile, Student);
          Tot := Tam + Eng + Maths;
          Avg := Tot / 3;
          WriteLn('Name: ', Name);
          WriteLn('Exam No.: ', ExamNo);
          WriteLn('Tamil: ', Tam);
          WriteLn('English: ', Eng);
          WriteLn('Mathematics: ', Maths);
          WriteLn('Total marks: ', Tot);
          WriteLn('Average: ', Avg:0:2)
        end;
      WriteLn('Press any key to continue');
      ReadLn;
      WriteLn
  end;

  Close(Infile)
end.
