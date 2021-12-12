{ find the mode and its frequency for an array }

program ModeAndFrequency(input, output);
var
  A: array[1..100] of LongInt;
  CurrMode, Mode: LongInt;
  N, I, J, T, CurrFreq, Freq: Integer;
begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  { sort the array using bubble sort }
  for I := 1 to N do
    for J := I+1 to N-1 do
      if A[J] > A[J+1] then
        begin
          T := A[J];
          A[J] := A[J+1];
          A[J+1] := T
        end;

  { find the mode, which is the most frequenct element }
  CurrMode := A[1];
  CurrFreq := 1;
  Mode := A[1];
  Freq := 1;
  for I := 2 to N do
    if A[I] = CurrMode then
      CurrFreq := CurrFreq + 1
    else
      begin
        if CurrFreq > Freq then
          begin
            Mode := CurrMode;
            Freq := CurrFreq
          end;
        CurrMode := A[I];
        CurrFreq := 1
      end;

  if CurrFreq > Freq then
    begin
      Mode := CurrMode;
      Freq := CurrFreq
    end;

  WriteLn('Mode = ', Mode, ' with frequency ', Freq)
end.
