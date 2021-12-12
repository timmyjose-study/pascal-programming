{
 read in an array and:

   1. sum all the elements
   2. find the row-wise sums
   3. find the column-wise sums
   4. sum the diagonal elements
   5. sum the off diagonal elements
 }

program MatOps(input, output);
var
  A: array[1..100, 1..100] of LongInt;
  N, M, I, J: Integer;
  Sum: Integer = 0;
  RowSum: Integer = 0;
  ColSum: Integer = 0;
  DiagSum : Integer = 0;
  OffDiagSum: Integer = 0;
begin
  for I := 1 to 100 do
    for J := 1 to 100 do
      A[I, J] := 0;

  ReadLn(N, M);
  for I := 1 to N do
    for J := 1 to M do
      Read(A[I, J]);

  WriteLn('Original array...');
  for I := 1 to N do
    begin
      for J := 1 to M do
        Write(A[I, J]:5);
      WriteLn
    end;

  { sum of all elements }
  for I := 1 to N do
    for J := 1 to M do
      Sum := Sum + A[I, J];
  WriteLn('Sum of all elements = ', Sum);

  { row-wise sums }
  for I := 1 to N do
    begin
      for J := 1 to M do
        RowSum := RowSum + A[I, J];
      WriteLn('Sum of elements for row ', I, ' = ', RowSum);
      RowSum := 0
    end;

  { column-wise sums }
  for J := 1 to M do
    begin
      for I := 1 to N do
        ColSum := ColSum + A[I, J];
      WriteLn('Sum of elements of column ', J, ' = ', ColSum);
      ColSum := 0
    end;

  { main diagonal sum }
  for I := 1 to N do
    for J := 1 to M do
      if I = J then
        DiagSum := DiagSum + A[I, J];
  WriteLn('Sum of elements of the main diagonal = ', DiagSum);

  { off diagonal sum }
  for I := 1 to N do
    for J := 1 to M do
      if I + J = M + 1 then
        OffDiagSum := OffDiagSum + A[I, J];
  WriteLn('Sum of elements of the off diagonal = ', OffDiagSum)
end.
