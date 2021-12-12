{ separate the male and female names from an array into separate arrays }

program SegregatGenders(input, output);
var
  Names, Males, Females: array[1..100] of String;
  Genders: array[1..100] of String;
  N, I, J, K, Mlen, Flen: Integer;
begin
  for I := 1 to 100 do
    begin
      Names[I] := '';
      Males[I] := '';
      Females[I] := '';
      Genders[I] := ''
    end;

  ReadLn(N);
  for I := 1 to N do
    begin
      WriteLn('Enter name');
      ReadLn(Names[I]);
      WriteLn('Sex code [M/F]');
      ReadLn(Genders[I])
    end;

  J := 1;
  MLen := 0;
  K := 1;
  FLen := 0;
  for I := 1 to N do
    if Genders[I] = 'M' then
      begin
        Males[J] := Names[I];
        MLen := MLen + 1;
        J := J + 1
      end
    else 
      begin
        Females[K] := Names[I];
        FLen := FLen + 1;
        K := K + 1
      end;

  if MLen <> 0 then
    begin
      WriteLn('There are ', MLen, ' males...');
      for J := 1 to MLen do
        WriteLn(Males[J])
    end;

  if FLen <> 0 then
    begin
      WriteLn('There are ', FLen, ' females...');
      for K := 1 to FLen do
        WriteLn(Females[K])
    end
end.
