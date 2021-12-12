{ find the sum of the arithmetic series: 1 + 2 + 3 + 4 + 5 ... + N using recursion }

program SigmaN(input, output);
var
  N: Integer;

function SumNums(N: Integer): LongInt;
begin
  if N = 0 then
    SumNums := 0
  else
    SumNums := N + SumNums(N - 1)
end;

begin
  ReadLn(N);
  WriteLn('Sum of numbers from 1 to ', N, ' = ', SumNums(N))
end.
