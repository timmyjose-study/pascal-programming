program CopyBinFile(input, output);
var
  InfileName, OutfileName: String;
  Infile: File of LongWord;
  Outfile: File of LongWord;
  B: LongWord;

begin
  WriteLn('Enter the full path of the input file');
  ReadLn(InfileName);
  Assign(Infile, InfileName);
  Reset(Infile);

  WriteLn('Enter the full path of the output file');
  ReadLn(OutfileName);
  Assign(Outfile, OutfileName);
  ReWrite(Outfile);

  while not Eof(Infile) do
    begin
      Read(Infile, B);
      Write(Outfile, B)
    end;

  Close(Infile);
  Close(Outfile)
end.