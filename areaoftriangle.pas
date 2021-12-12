{ calculate the area of a triangle given its base and height }

program AreaOfTriangle(input, output);
var
  Base, Height: Real;

function TriangleArea(B, H: Real): Real;
begin
  TriangleArea := 0.5 * B * H
end;

begin
  ReadLn(Base, Height);
  WriteLn('Area of a triangle with base ', Base:0:3, ' and height ', Height:0:3, ' is ', TriangleArea(Base, Height):0:3)
end.
