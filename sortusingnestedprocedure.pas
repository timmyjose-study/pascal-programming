{ sort array using bubble sort, but using a nested swap procedure }

program SortUsingNestedProcedure(input, output);
type
  Arr = array[1..100] of LongInt;

var
  A: Arr;
  N, I: Integer;

procedure Display(A: Arr; N: Integer);
var
  I: Integer;
begin
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn
end;

procedure Sort(var A: Arr; N: Integer);
var
  I, J: Integer;

procedure Swap(var X, Y: LongInt);
var
  T: LongInt;
begin
  T := X;
  X := Y;
  Y := T
end;

begin
    for I := 1 to N do
      for J := 1 to N - 1 do
        if A[J] > A[J+1] then
          Swap(A[J], A[J+1])
end;

begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  Display(A, N);
  Sort(A, N);
  Display(A, N)
end.
