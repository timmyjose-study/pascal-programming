{ delete the element at the specified position in the array }

program DeleteElemArray(input, output);
var
  A: array[1..100] of Integer;
  N, I, Pos: Integer;
begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  WriteLn('Original array');
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn;

  ReadLn(Pos);
  if (Pos < 1) or (Pos > N) then
    begin
      WriteLn(Pos, ' is not a valid index');
      Exit
    end;

  for I := Pos to N do
    A[I] := A[I + 1];
  
  WriteLn('Array after deleting element at position ', Pos);
  for I := 1 to N-1 do
    Write(A[I], ' ');
  WriteLn
end.
