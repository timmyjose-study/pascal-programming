{ unlike what the book says, the random file access is apparently done by counting records from 0 onwards }
program EmpBinaryRandomRead(input, output);
type
  EmpRec = record
            EmpNo: Integer;
            EmpName: String;
            Desgn: String;
          end;

var
  InfileName: String;
  Infile: File of EmpRec;
  Emp: EmpRec;
  Cont: String = 'Y';

begin
  WriteLn('Enter input file');
  ReadLn(InfileName);

  Assign(Infile, InfileName);
  Reset(Infile);

  while Cont = 'Y' do
    begin
      WriteLn('Enter employee number');
      ReadLn(Emp.EmpNo);
      Seek(Infile, Emp.EmpNo); { we can use any field as a pointer }
      Read(Infile, Emp);

      with Emp do
        WriteLn('Employee details - No.: ', EmpNo, ', Name: ', EmpName, ', Designation: ', Desgn);
      WriteLn('Continue? [y/n]');
      ReadLn(Cont);
      Cont := Upcase(Cont)
    end;

  Close(Infile)
end.
