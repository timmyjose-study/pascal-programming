{ Sort an input array using a procedure, uses Bubble Sort }

program SortUsingProc(input, output);
type
  Arr = array[1..100] of LongInt;

var
  A: Arr;
  N, I: Integer;

procedure Sort(var A: Arr; N: Integer);
var
  I, J: Integer;
  T: LongInt;
begin
  for I := 1 to N do
    for J := 1 to N - 1 do
      if A[J] > A[J+1] then
        begin
          T := A[J];
          A[J] := A[J+1];
          A[J+1] := T
        end;
end;

begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  WriteLn('Before sorting...');
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn;

  Sort(A, N);

  WriteLn('After sorting...');
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn
end.
