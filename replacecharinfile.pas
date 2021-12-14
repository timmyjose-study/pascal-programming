{ input file: replacecharinfile.in }

program ReplaceCharInFile(input, output);
type
  ArrT = array[1..100] of String;

function ProcessFile(var Infile: Text; var Lines: ArrT; FromChar, ToChar: ShortString): Integer;
var
  Input: String;
  N: Integer = 0;

function ProcessLine(Line: String): String;
var
  I: Integer;
  Output: String = '';
begin
  for I := 1 to Length(Line) do
    if Line[I] = FromChar then
      Output := Output + ToChar
    else if Line[I] = Upcase(FromChar) then
      Output := Output + Upcase(ToChar)
    else
      Output := Output + Line[I];

  ProcessLine := Output
end;

begin
  while not Eof(Infile) do
    begin
      Inc(N);
      ReadLn(Infile, Input);
      Lines[N] := ProcessLine(Input)
    end;

  ProcessFile := N
end;

procedure WriteProcessedFile(var Outfile: Text; var Lines: ArrT; N: Integer);
var
  I: Integer;
begin
  for I := 1 to N do
    WriteLn(Outfile, Lines[I])
end;

var
  Infile: Text;
  Outfile: Text;
  Lines: ArrT;
  N: Integer;

begin
  if ParamCount <> 4 then
    begin
      WriteLn('Usage: replacecharinfile <src-file> <target-file> <from-char> <to-char>');
      Exit
    end;

  Assign(Infile, ParamStr(1));
  Reset(Infile);
  N := ProcessFile(Infile, Lines, ParamStr(3), ParamStr(4));
  Close(Infile);

  Assign(Outfile, ParamStr(2));
  Rewrite(Outfile);
  WriteProcessedFile(Outfile, Lines, N);
  Close(Outfile)
end.
