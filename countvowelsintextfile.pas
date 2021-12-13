program CountVowelsInTextFile(input, output);
var
  InfileName: String;
  Infile: Text;
  Line: String;
  ACount, ECount, ICount, OCount, UCount: Integer;

function IsVowel(C: Char): Boolean;
begin
  case C of
  'A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u': IsVowel := true;
  else
    IsVowel := false
  end
end;

procedure ProcessLine(L: String);
var
  I: Integer;
begin
  for I := 1 to Length(L) do
    if IsVowel(L[I]) then
      case L[I] of
      'A', 'a': Inc(ACount);
      'E', 'e': Inc(ECount);
      'I', 'i': Inc(ICount);
      'O', 'o': Inc(OCount);
      'U', 'u': Inc(UCount);
      end
end;

procedure PrintStats;
begin
  WriteLn('A count = ', ACount);
  WriteLn('E count = ', ECount);
  WriteLn('I count = ', ICount);
  WriteLn('O count = ', OCount);
  WriteLn('U count = ', UCount)
end;

begin
  WriteLn('Enter path of input file');
  ReadLn(InfileName);

  Assign(Infile, InfileName);
  Reset(Infile);

  while not Eof(Infile) do
    begin
      ReadLn(Infile, Line);
      ProcessLine(Line)
    end;

  PrintStats;
  Close(Infile)
end.
