{ factorial, done recursively }

program RecFact(input, output);
var
  N: LongInt;

function Factorial(N: LongInt): LongInt;
begin
  if N <= 0 then
    Factorial := 1
  else
    Factorial := N * Factorial(N - 1)
end;

begin
  ReadLn(N);
  WriteLn('Factorial(', N, ') = ', Factorial(N))
end.
