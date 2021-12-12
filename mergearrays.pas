{ merge the contents of two arrays, possibly of different sizes, duplicates allowed }

program MergeArrays(input, output);
var
  A, B, C: array[1..1000] of LongInt;
  N, M, I, J: Integer;
begin
  for I := 1 to 1000 do
    begin
      A[I] := 0;
      B[I] := 0;
      C[I] := 0
    end;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  ReadLn(M);
  for J := 1 to M do
    Read(B[J]);

  for I := 1 to N do
   C[I] := A[I];

  for I := 1 to M do
    C[I+N] := B[I];

  for I := 1 to N + M do
    Write(C[I]:5);
  WriteLn
end.
