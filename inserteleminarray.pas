{ insert an element at an input position in the array }

program InsertElementInArray(input, output);
var
  A: array[1..100] of Integer;
  N, I, Pos, NewElem: Integer;
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

  ReadLn(Pos, NewElem);
  if (Pos < 1) or (Pos > N) then
    begin
      WriteLn(Pos, ' is not a valid index');
      Exit
    end;

  for I := N + 1 downto Pos do
    A[I] := A[I-1];
  A[Pos] := NewElem;

  WriteLn('Array after insertion of ', NewElem, ' at ', Pos);
  for I := 1 to N + 1 do
    Write(A[I], ' ');
  WriteLn
end.
