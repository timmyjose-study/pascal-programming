program SimpleTextFile(input, output);
var
  OutfileName: String;
  Outfile: Text;
  Line: String;
  Continue: String;

begin
  WriteLn('Enter output file name');
  ReadLn(OutfileName);

  Assign(Outfile, OutfileName);
  ReWrite(Outfile);

  Continue := 'Y';
  while Continue = 'Y' do
    begin
      WriteLn('Enter line');
      ReadLn(Line);
      WriteLn(Outfile, Line);

      WriteLn('Continue? [Y/N]');
      ReadLn(Continue);
      Continue := Upcase(Continue);
    end;

  Close(Outfile)
end.
