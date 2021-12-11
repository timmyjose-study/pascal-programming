{
 Calculate the sales commission given the following rules:

  Sales <= 1000, no commission
  Sales > 100 and Sales <= 2000, 3% of Sales
  Sales > 2000 and Sales <= 5000, 5% of Sales
  Sales > 5000, 8% of Sales
}

program SalesCommission(input, output);

var
  Sales: Integer;
  Rate, FinalCommission: Real;

begin
  ReadLn(Sales);

  if Sales <= 1000 then
    Rate := 0.0
  else if Sales <= 2000 then
    Rate := 3.0
  else if Sales <= 5000 then
    Rate := 5.0
  else
    Rate := 8.0;

  FinalCommission := (Rate * Sales) / 100;
  WriteLn('Final Commission = ', FinalCommission:8:2)
end.
