{ read in an array, and traverse it to display the elements }

program DisplayArray(input, output);
var
  A: array[1..100] of Integer;
  N, I: Integer;
begin
  { just to make the compiler happy }
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    ReadLn(A[I]);

  WriteLn('The array you entered is');
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn
end.