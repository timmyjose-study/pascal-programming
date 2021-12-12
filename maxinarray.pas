{ find the largest element in an array }

program MaxInArray(input, output);
type
  Arr = array[1..100] of LongInt;

var
  A: Arr;
  N, I: Integer;

function FindMax(A: Arr; N: Integer): LongInt;
var
  M: LongInt;
  I: Integer;
begin
  M := A[1];
  for I := 2 to N do
    if A[I] > M then
      M := A[I];
  FindMax := M
end;

begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  WriteLn('Max element in array = ', FindMax(A, N))
end.
