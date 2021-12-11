{ temperature conversion between Celsius and Fahrenheit }

program Temp(input, output);
var
  Choice: Integer;
  Centi, Fahr: Real;
begin
  WriteLn('Enter 1 for Centigrade to Fahrenheit');
  WriteLn('      2 for Fahrenheit to Centigrade');
  ReadLn(Choice);

  case Choice of
  1: begin
      WriteLn('Enter temperature in Centigrade');
      ReadLn(Centi);
      Fahr := Centi * (9.0 / 5.0) + 32.0;
      WriteLn(Centi:0:2, 'C = ', Fahr:0:2, 'F')
    end;

  2: begin
      WriteLn('Enter temperature in Fahrenheit');
      ReadLn(Fahr);
      Centi := (Fahr - 32.0) * (5.0 / 9.0);
      WriteLn(Fahr:0:2, 'F = ', Centi:0:2, 'C')
    end;
  end;
end.
