{ convert a decimal number into binary }

program DecToBin(input, output);
var
  N: LongInt;
  Bin: array[1..100] of Integer;
  I, Len: Integer;
begin
  for I := 1 to 100 do
    Bin[I] := 0;

  ReadLn(N);

  I := 1;
  Len := 0;
  repeat
    Bin[I] := N mod 2;
    I := I + 1;
    N := N div 2;
    Len := Len + 1
  until N = 0;

  for I := Len downto 1 do
    Write(Bin[I]);
  WriteLn
end.

