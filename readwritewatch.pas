program ReadWriteWatch(input, output);
type
  WatchRec = record
              Make: String;
              Model: String;
              Price: Integer;
            end;
  
  WatchFile = File of WatchRec;

var
  OutfileName: String;
  Outfile: WatchFile;
  InfileName: String;
  Infile: WatchFile;

procedure WriteWatches(var Outfile: WatchFile);
var
  Watch: WatchRec;
  Cont: String = 'Y';
begin
  while Cont = 'Y' do
    with Watch do
      begin
        Write('Enter make: ');
        ReadLn(Make);
        Write('Enter model: ');
        ReadLn(Model);
        Write('Enter price: ');
        ReadLn(Price);
        Write(Outfile, Watch);

        WriteLn('Continue? [y/n]');
        ReadLn(Cont);
        Cont := Upcase(Cont)
      end
end;

procedure ReadWatches(var Infile: WatchFile);
var
  Watch: WatchRec;
begin
  while not Eof(Infile) do
    with Watch do
      begin
        Read(Infile, Watch);
        WriteLn('Make: ', Make, ', Model: ', Model, ', Price: ', Price)
      end
end;

begin
  WriteLn('Enter output file');
  ReadLn(OutfileName);

  Assign(Outfile, OutfileName);
  Rewrite(Outfile);
  WriteWatches(Outfile);
  Close(Outfile);

  WriteLn('Enter input file');
  ReadLn(InfileName);

  Assign(Infile, InfileName);
  Reset(Infile);
  ReadWatches(Infile);
  Close(Infile)
end.






