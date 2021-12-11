{ factorial of the input }

program Factorial(input, output);
var
  N, I: Longint;
  Fact: LongInt = 1;
begin
  ReadLn(N);
  for I := N downto 2 do
    Fact := Fact * I;
  WriteLn('Factorial of ', N, ' = ', Fact)
end.
