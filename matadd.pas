{ matrix addition }

program MatAdd(input, output);
var
  A, B, C: array[1..100, 1..100] of LongInt;
  N, M, I, J: Integer;
begin
  for I := 1 to 100 do
    for J := 1 to 100 do
      begin
        A[I, J] := 0;
        B[I, J] := 0;
        C[I, J] := 0
      end;

  ReadLn(N, M);
  WriteLn('Enter the first matrix...');
  for I := 1 to N do
    for J := 1 to M do
      Read(A[I, J]);

  WriteLn('Enter the second matrix...');
  for I := 1 to N do
    for J := 1 to M do
      Read(B[I, J]);

  for I := 1 to N do
    for J := 1 to M do
      C[I, J] := A[I, J] + B[I, J];

  WriteLn('Sum matrix...');
  for I := 1 to N do
    begin
      for J := 1 to M do
        Write(C[I, J]:5);
      WriteLn;
    end
end.
