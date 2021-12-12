{ print the Pascal Triangle }

program PascalTriangle(input, output);
var
  A: array[1..100, 1..100] of LongInt;
  C, N, I, J: Integer;
begin
  for I := 1 to 100 do
    for J := 1 to 100 do
      A[I, J] := 1;

  ReadLn(N);
  for C := 2 to N do
    begin
      J := 2;
      for I := 1 to C-1 do
        begin
          A[C,J] := A[C-1,I] + A[C-1,I+1];
          J := J + 1
        end
    end;

  for I := 1 to N do
    begin
      for J := 1 to I+1 do
        Write(A[I,J]:8);
      WriteLn
    end
end.
