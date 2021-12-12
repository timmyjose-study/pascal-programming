{ sort a two-dimensional array, column-wise }

program SortColumns(input, output);
var
  A: array[1..100, 1..100] of LongInt;
  T: LongInt;
  N, M, I, J, K: Integer;
begin
  for I := 1 to 100 do
    for J := 1 to 100 do
      A[I, J] := 0;

  ReadLn(N, M);
  for I := 1 to N do
    for J := 1 to M do
      Read(A[I, J]);

  WriteLn('Original array...');
  for I := 1 to N do
    begin
      for J := 1 to M do
        Write(A[I, J]:5);
      WriteLn
    end;

  for J := 1 to M do
    for I := 1 to N-1 do
      for K := I + 1 to N do
        if A[I, J] > A[K, J] then
          begin
            T := A[I, J];
            A[I, J] := A[K, J];
            A[K, J] := T
          end;

  WriteLn('Sorted array (column-wise)...');
  for I := 1 to N do
    begin
      for J := 1 to M do
        Write(A[I, J]:5);
      WriteLn
    end
end.