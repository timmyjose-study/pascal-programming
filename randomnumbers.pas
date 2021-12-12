{ builtin random number functions }

program RandomNumbers(output);
var 
  I: Integer;
begin
  for I := 1 to 10 do
    WriteLn('Random = ', Random:8:4);

  for I := 1 to 10 do
    WriteLn('Random(10) = ', Random(10))
end.
