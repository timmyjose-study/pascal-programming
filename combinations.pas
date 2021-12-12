{ find the value of N choose R }

program Combinations(input, output);
var
  N, R: LongInt;

function Factorial(N: LongInt): LongInt;
var
  F: LongInt = 1;
begin
  while N <> 1 do
    begin
      F := F * N;
      N := N - 1
    end;
  Factorial := F
end;

function NChooseR(N, R: LongInt): LongInt;
begin
  NChooseR := (Factorial(N) div Factorial(R)) div Factorial(N-R)
end;

begin
  ReadLn(N, R);
  WriteLn(N, ' choose ', R, ' = ', NChooseR(N, R))
end.
