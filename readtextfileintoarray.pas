program ReadTextFileIntoArray(input, output);
type
  ArrT = array[1..1000] of String;

var
  Infile: Text;
  Lines: ArrT;
  I, N : Integer;

begin
  if ParamCount() <> 1 then
    begin
      WriteLn('Usage: readtextfileintoarray <input-file>');
      Exit
    end;

  Assign(Infile, ParamStr(1));
  Reset(Infile);

  I := 1;
  while not Eof(Infile) do
    begin
      ReadLn(Infile, Lines[I]);
      Inc(I)
    end;

  N := I;
  for I := 1 to N do
    WriteLn(Lines[I]);

  Close(Infile)
end.
