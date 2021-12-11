program TriangleArea;

var
  Base, Height, Area: Real;

begin
  ReadLn(Base, Height);
  Area := 0.5 * Base * Height;
  WriteLn('A triangle with base ', Base:8:3, ', and height ', Height:8:3, ' has area ', Area:8:3)
end.
