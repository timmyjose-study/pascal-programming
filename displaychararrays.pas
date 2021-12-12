{ read in a number of fixed-length strings into an array and display them }

program DisplayCharArrays(input, output);
var
  A: array[1..100] of String[20];
  N, I: Integer;
begin
  for I := 1 to 100 do
    A[I] := '';

  ReadLn(N);
  for I := 1 to N do
    ReadLn(A[I]);

  WriteLn('The srings that you entered are...');
  for I := 1 to N do
    WriteLn(A[I])
end.
