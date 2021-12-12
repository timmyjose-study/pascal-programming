{ convert a two-dimensional array into a one-dimensional array }

program MatrixToArray(input, output);
var
  A: array[1..100, 1..100] of LongInt;
  B: array[1..10000] of LongInt;
  N, M, I, J: Integer;
begin
  for I := 1 to 100 do
    for J := 1 to 100 do
      A[I, J] := 0;

  for I := 1 to 10000 do
    B[I] := 0;

  ReadLn(N, M);
  WriteLn('Enter the matrix...');
  for I := 1 to N do
    for J := 1 to M do
      Read(A[I,J]);

  WriteLn('Before conversion, matrix is');
  for I := 1 to N do
    begin
      for J := 1 to M do
        Write(A[I, J], ' ');
      WriteLn
    end;

  for I := 1 to M do
    for J := 1 to N do
      B[(I-1) * M + J] := A[I, J];

  WriteLn('After conversion, array is');
  for I := 1 to M * N do
    Write(B[I], ' ');
  WriteLn
end.
