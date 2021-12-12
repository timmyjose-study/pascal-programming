{ example of a multi-dimensional array }

program MultDimArray(input, output);
var
  Sales: array[1..2, 1..3, 1..4] of LongInt;
  I, J, K: LongInt;
  SecSale: LongInt = 0;
  DivSale: LongInt = 0;
  TotSale: LongInt = 0;
begin
  for I := 1 to 2 do
    begin
      WriteLn('Enter sales for division ', I);
      for J := 1 to 3 do
        begin
          WriteLn('Enter 4 day sales for section ', J:3);
          for K := 1 to 4 do
            ReadLn(Sales[I, J, K]);
        end
    end;

  for I := 1 to 2 do
    begin
      for J := 1 to 3 do
        begin
          for K := 1 to 4 do
            SecSale := SecSale + Sales[I, J, K];
          WriteLn('Sales for Section ', J, ' of Division ', I, ' = ', SecSale);
          DivSale := DivSale + SecSale;
          SecSale := 0
        end;
    WriteLn('Sales for Division ', I, ' = ', DivSale);
    TotSale := TotSale + DivSale;
    DivSale := 0
  end;

  WriteLn('Total sales = ', TotSale)
end.
