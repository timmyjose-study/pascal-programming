{ alternative approach to checking if a string is a palindrome }

program AltPalindrome(input, output);
var
  S: String;
  R: String = '';
  I: Integer;
begin
  ReadLn(S);

  for I := Length(S) downto 1 do
    R := R + S[I];

  if S = R then
    Writeln(S, ' is a palindrome')
  else
    WriteLn(S, ' is not a palindrome')
end.
