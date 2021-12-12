{ copy the elements of an array into another array, in reverse order }

program ReverseArray(input, output);
var
  A, B: array[1..100] of LongInt;
  N, I: Integer;
begin
  for I := 1 to 100 do
    begin
      A[I] := 0;
      B[I] := 0
    end;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  for I := 1 to N do
    B[N-I+1] := A[I];

  WriteLn('After transferring elements');
  WriteLn('Location    A    B');
  for I := 1 to N do
    WriteLn('   ', I, '       ', A[I], '    ', B[I])
end.
