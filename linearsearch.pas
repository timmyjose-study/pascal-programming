{ read in an array, read in a search item, and check if the item exists in the array }

program LinearSearch(input, output);
const
  MaxSize = 1000;
var
  A: array[1..MaxSize] of Integer;
  N, M, I: Integer;
begin
  for I := 1 to MaxSize do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  ReadLn(M);
  for I := 1 to N do
    if A[I] = M then
      begin
        WriteLn(M, ' found at position ', I, ' in the array');
        Exit
      end;

  WriteLn(M, ' was not found in the array')
end.
