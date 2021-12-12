{ sort the names stored in an array, in ascending order }

program SortNames(input, output);
var
  Names: array[1..100] of String;
  Temp: String;
  N, I, J: Integer;
begin
  for I := 1 to 100 do
    Names[I] := '';

  ReadLn(N);
  for I := 1 to N do
    ReadLn(Names[I]);

  for I := 1 to N do
    for J := 1 to N-1 do
      if Names[J] > Names[J+1] then
        begin
          Temp := Names[J];
          Names[J] := Names[J+1];
          Names[J+1] := Temp
        end;

  WriteLn('Names in ascending order...');
  for I := 1 to N do
    WriteLn(Names[I], ' ')
end.
