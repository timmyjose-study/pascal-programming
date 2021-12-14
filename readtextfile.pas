program ReadTextFile(input, output);
var
  Infile: Text;
  Line: String;
begin
  if ParamCount() <> 1 then
    begin
      WriteLn('Usage: readtextfile <input-file>');
      Exit
    end;

  Assign(Infile, ParamStr(1));
  Reset(Infile);

  while not Eof(Infile) do
    begin
      ReadLn(Infile, Line);
      WriteLn('Read in line: ', Line)
    end;

  Close(Infile);
end.
