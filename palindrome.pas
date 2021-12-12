{ check if the entered string is a palindrome }

program Palindrome(input, output);
var
  S: String;
  I, J: Integer;
begin
  ReadLn(S);
  I := 1;
  J := Length(S);

  while I < J do
    begin
      if S[I] <> S[J] then
        begin
          WriteLn(S, ' is not a palindrome');
          Exit
        end;
      I := I + 1;
      J := J - 1
    end;

  WriteLn(S, ' is a palindrome')
end.
