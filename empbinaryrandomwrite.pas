program EmpRandomBinaryWrite(input, output);
type
  EmpRec = record
            EmpNo: Integer;
            EmpName: String;
            Desgn: String;
          end;

var
  OutfileName: String;
  Outfile: File of EmpRec;
  Emp: EmpRec;
  Cont: String;

begin
  WriteLn('Enter the output file');
  ReadLn(OutfileName);

  Assign(Outfile, OutfileName);
  ReWrite(Outfile);
  
  Cont := 'Y';
  while Cont = 'Y' do
    with Emp do
      begin
        WriteLn('Enter Employee Number');
        ReadLn(EmpNo);
        WriteLn('Enter Employee Name');
        ReadLn(EmpName);
        WriteLn('Enter Employee Designation');
        ReadLn(Desgn);
        Write(Outfile, Emp);
        
        WriteLn('Continue? [y/n]');
        ReadLn(Cont);
        Cont := Upcase(Cont)
      end;

  Close(Outfile)
end.
