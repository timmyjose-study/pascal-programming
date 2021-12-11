{ Mileage of motorcycle - 48 kmpl, cost of petrol = 20.30/litre, distance - 145km }

program Motorcyle;

const
  Mileage = 48;
  Cost = 20.30;
  Distance = 145;

var
  TotalCost: Real;

begin
  TotalCost := (Distance / Mileage) * Cost;
  WriteLn('Total charge = ', TotalCost:8:3)
end.