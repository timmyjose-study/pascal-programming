{
 Calculate the income tax using the following rules:

   Income <= 28000, Tax = 0
   Income <= 50000, Tax = 20% of (Income - 28000)
   Income <= 100000, Tax = 4400 + 30% of (Income - 50000)
   Income > 100000, Tax = 19400 + 40% of (Income - 100000)
 }

program IncomeTax;

const
  Slab1Rate = 20.0;
  Slab2Fixed = 4400;
  Slab2Rate = 30.0;
  Slab3Fixed = 19400;
  Slab3Rate = 40.0;

var
  Income: LongInt;
  Tax: Real;

begin
  ReadLn(Income);

  if Income <= 28000 then
    Tax := 0.0
  else if Income <= 50000 then
    Tax := (Income - 28000) * (Slab1Rate / 100.0)
  else if Income <= 100000 then
    Tax := Slab2Fixed + (Income - 50000) * (Slab2Rate / 100.0)
  else
    Tax := Slab3Fixed + (Income - 100000) * (Slab3Rate / 100.0);

  WriteLn('Total Income Tax = ', Tax:8:2)
end.
