{ delete all vowels from a string }

program DeleteVowels(input, output);
var
  Str: String;

function IsVowel(C: Char): Boolean;
begin
  case C of
  'A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u': IsVowel := true;
  else
    IsVowel := false
  end
end;

function StripVowels(S: String): String;
var
  I: Integer;
  Out: String = '';
begin
  for I := 1 to Length(S) do
    If not IsVowel(S[I]) then
      Out := Out + S[I];
  StripVowels := Out
end;

begin
  ReadLn(Str);
  WriteLn(StripVowels(Str))
end.
