{ count the number of numbers that occur in the following range in an array:

    Range 1 = 0-8
    Range 2 = 9-15
    Range 3 = > 15
}

program CountFreq(input, output);
var
  A: array[1..1000] of LongInt;
  N, I: Integer;
  R1: Integer = 0;
  R2: Integer = 0;
  R3: Integer = 0;
begin
  for I := 1 to 1000 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  for I := 1 to N do
    if (A[I] >= 0) and (A[I] <= 8) then
      R1 := R1 + 1
    else if (A[I] >= 9) and (A[I] <= 15) then
      R2 := R2 + 1
    else if A[I] > 15 then
      R3 := R3 + 1;

  WriteLn('No. of elements in the range [0, 8] = ', R1);
  WriteLn('No. of elements in the range [9, 15] = ', R2);
  WriteLn('No. of elements > 15 = ', R3)
end.
