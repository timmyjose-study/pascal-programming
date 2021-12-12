{ sort an array using bubble sort }

program BubbleSort(input, output);
var
  A: array[1..100] of LongInt;
  T: LongInt;
  N, I, J: Integer;
begin
  { just to make the compiler happy }
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  WriteLn('Original array');
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn;

  for I := 1 to N-1 do
    for J := I+1 to N do
      if A[I] > A[J] then
        begin
          T := A[I];
          A[I] := A[J];
          A[J] := T
        end;

  WriteLn('Array after Bubble Sort');
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn
end.
