program LinSearch(input, output);
type
  Arr = array[1..100] of LongInt;

var
  A: Arr;
  E: LongInt;
  N, I: Integer;

function LinearSearch(A: Arr; N: Integer; E: LongInt): Boolean;
var
  I: Integer;
  Found: Boolean = false;
begin
  for I := 1 to N do
    if A[I] = E then
      begin
        Found := true;
        break
      end;

  LinearSearch := Found
end;

begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  ReadLn(E);
  if LinearSearch(A, N, E) then
    WriteLn('Found')
  else
    WriteLn('Not found')
end.
