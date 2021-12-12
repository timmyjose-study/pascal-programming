{ find the average income of persons aged between 25 and 30 }

program AverageIncome(input, output);
var
  Age, Income: array[1..100] of LongInt;
  TotIncome: LongInt;
  N, I, C: Integer;
  AvgIncome: Real;
begin
  for I := 1 to 100 do
    begin
      Age[I] := 0;
      Income[I] := 0
    end;

  ReadLn(N);
  C := 0;
  TotIncome := 0;
  for I := 1 to N do
    begin
      Read(Age[I]);
      Read(Income[I]);

      if (Age[I] >= 25) and (Age[I] <= 30) then
        begin
          TotIncome := TotIncome + Income[I];
          C := C + 1
        end
    end;

  AvgIncome := TotIncome / C;
  WriteLn(AvgIncome:0:3)
end.
