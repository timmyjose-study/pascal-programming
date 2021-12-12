{ check if the array is sorted in ascending order or not }

program CheckArraySorted(input, output);
type
  Arr = array[1..100] of LongInt;

var
  A: Arr;
  N, I: Integer;

function CheckSorted(A: Arr; N: Integer): Boolean;
var
  I: Integer;
  Sorted: Boolean = true;
begin
  for I := 1 to N-1 do
    if A[I] > A[I+1] then
      begin
        Sorted := false;
        break
      end;

  CheckSorted := Sorted
end;

begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  if CheckSorted(A, N) then
    WriteLn('Sorted')
  else
    WriteLn('Not sorted')
end.
