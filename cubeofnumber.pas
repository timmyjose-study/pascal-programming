program CubeOfNumber(input, output);
var
  N: Integer;

procedure Cube;
var
  C: Integer;
begin
  C := N * N * N;
  WriteLn(N, ' cubed is ', C)
end;

begin
  ReadLn(N);
  Cube
end.
