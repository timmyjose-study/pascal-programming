{ read in and display a two-dimensional array }

program DisplayMatrix(input, output);
var
  A: array[1..3, 1..3] of Integer;
  I, J: Integer;
begin
  for I := 1 to 3 do
    for J := 1 to 3 do
      A[I, j] := 0;

  for I := 1 to 3 do
    for J := 1 to 3 do
      Read(A[I, J]);

  WriteLn('Here is your matrix...');
  for I := 1 to 3 do
    begin
      for J := 1 to 3 do
        Write(A[I, J]:4);
      WriteLn;
    end
end.
