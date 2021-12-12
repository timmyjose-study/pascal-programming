{ find the maximum value and its position in an array }

program MaxAndPos(input, output);
var
  A: array[1..10] of Integer;
  Max, I, Pos: Integer;
begin
  for I := 1 to 10 do
      ReadLn(A[I]);

  Pos := 1;
  Max := A[Pos];
  for I := 1 to 10 do
    if A[I] > Max then
      begin
        Max := A[I];
        Pos := I
      end;

  WriteLn('Maximum value if ', Max, ' at position ', Pos)
end.