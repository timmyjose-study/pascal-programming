program WriteTypedStudent(input, output);
type
  StdRec = record
            Name: String;
            ExamNo, Tam, Eng, Maths: Integer;
          end;

var
  Student: StdRec;
  OutfileName: String;
  Outfile: File of StdRec; { typed binary file }
  Cont: String;

begin
  WriteLn('Enter the name of the output file');
  ReadLn(OutfileName);
  Assign(Outfile, OutfileName);

  ReWrite(Outfile);
  Cont := 'Y';
  while (Cont = 'Y') or (Cont = 'YES') do
    with Student do
      begin
        WriteLn('Enter name');
        ReadLn(Name);
        WriteLn('Enter the exam number');
        ReadLn(ExamNo);
        WriteLn('Enter marks in Tamil, English, and Mathematics');
        ReadLn(Tam, Eng, Maths);
        Write(Outfile, Student);

        WriteLn('Continue? [y/n]');
        ReadLn(Cont);
        Cont := Upcase(Cont);
      end;

    Close(Outfile)
end.