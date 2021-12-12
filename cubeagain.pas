program CubeAgain(input, output);
var
  N: Integer;

procedure Cube(N: Integer);
var
  C: Integer;
begin
  C := N * N * N;
  WriteLn(N, ' cubed is ', C)
end;

begin
  ReadLn(N);
  Cube(N)
end.
