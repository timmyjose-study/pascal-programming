{ generate the fibonacci series using an array }

program Fibonacci(input, output);
var
  A: array[1..100] of LongInt;
  N, I: Integer;
begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);

  A[1] := 0;
  A[2] := 1;
  for I := 3 to N do
    A[I] := A[I-1] + A[I-2];

  for I := 1 to N do
    Write(A[I]:5);
  WriteLn
end.
