{ input file: filterduplicates.in }

program FilterDuplicates(input, output);
type
  LineArray = array[1..100] of String;

function ReadRecords(var Infile: Text; var Lines: LineArray): Integer;
var
  RecCount: Integer = 0;
begin
  while not Eof(Infile) do
    begin
      RecCount := RecCount + 1;
      ReadLn(Infile, Lines[RecCount])
    end;

  ReadRecords := RecCount
end;

function RemoveDuplicates(Lines: LineArray; var N: Integer): LineArray;
var
  FiltLines: LineArray;
  I, J, K: Integer;
  Dup: Boolean = false;
begin
  K := 0;
  for I := 1 to N do
    begin
      for J := I + 1 to N do
        if Lines[I] = Lines[J] then
          begin
            Dup := true;
            break
          end;

      if not Dup then 
        begin
          K := K + 1;
          FiltLines[K] := Lines[I]
        end;

      Dup := false
    end;

  N := K-1;
  RemoveDuplicates := FiltLines
end;

procedure WriteRecords(var Outfile: Text; Lines: LineArray; N: Integer);
var
  I: Integer;
begin
  for I := 1 to N do
    WriteLn(Outfile, Lines[I])
end;

procedure VerifyRecords(var Infile: Text);
var
  Line: String;
begin
  while not Eof(Infile) do
    begin
      ReadLn(Infile, Line);
      WriteLn(Line)
    end;
end;

var
  Infile: Text;
  Outfile: Text;
  Lines: LineArray;
  N: Integer;

begin
  if ParamCount() <> 2 then
    begin
      WriteLn('Usage: filterduplicates <src-file> <target-file>');
      Exit
    end;

  Assign(Infile, ParamStr(1));
  Reset(Infile);
  N := ReadRecords(Infile, Lines);
  Close(Infile);

  Lines := RemoveDuplicates(Lines, N);
  Assign(Outfile, ParamStr(2));
  Rewrite(Outfile);
  WriteRecords(Outfile, Lines, N);
  Close(Outfile);

  Assign(Infile, ParamStr(1));
  Reset(Infile);
  VerifyRecords(Infile);
  Close(Infile)
end.