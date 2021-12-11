{ enter a number and check if it is divisible by both 3 and 7 }

program CheckDiv(input, output);
var
  N: Integer;
begin
  ReadLn(N);

  if (N mod 3 = 0) and (N mod 7 = 0) then
    WriteLn('Yeah')
  else
    WriteLn('Nope');
end.
