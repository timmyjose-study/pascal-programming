program Shapes(input, output);
type
  Circle = object
            Radius: Real;
            constructor Init;
            function GetArea: Real;
            function GetPerimeter: Real;
          end;

  Rectangle = object
                Len: Real;
                Breadth: Real;
                constructor Init;
                function GetArea: Real;
                function GetPerimeter: Real;
              end;

  Triangle = object
              Base: Real;
              Height: Real;
              constructor Init;
              function GetArea: Real;
            end;

{ Circle }

constructor Circle.Init;
begin
  Write('Enter the radius: ');
  ReadLn(Radius)
end;

function Circle.GetArea: Real;
begin
  GetArea := Pi * Radius * Radius
end;

function Circle.GetPerimeter: Real;
begin
  GetPerimeter := 2.0 * Pi * Radius
end;

{ Rectangle }

constructor Rectangle.Init;
begin
  Write('Enter the length and breadth: ');
  ReadLn(Len, Breadth)
end;

function Rectangle.GetArea: Real;
begin
  GetArea := Len * Breadth
end;

function Rectangle.GetPerimeter: Real;
begin
  GetPerimeter := 2.0 * (Len + Breadth)
end;


{ Triangle }

constructor Triangle.Init;
begin
  Write('Enter the base and height: ');
  ReadLn(Base, Height)
end;

function Triangle.GetArea: Real;
begin
  GetArea := 0.5 * Base * Height
end;

var
  C: Circle;
  R: Rectangle;
  T: Triangle;

begin
  C.Init;
  WriteLn('Area of circle = ', C.GetArea:0:3);
  WriteLn('Perimeter of circle = ', C.GetPerimeter:0:3);

  R.Init;
  WriteLn('Area of rectangle = ', R.GetArea:0:3);
  WriteLn('Perimeter of rectangle = ', R.GetPerimeter:0:3);

  T.Init;
  WriteLn('Area of triangle = ', T.GetArea:0:3)
end.
