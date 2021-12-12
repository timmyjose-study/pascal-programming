{ exchange the contents of two arrays, each of the same size }

var
  A, B: array[1..100] of LongInt;
  T: LongInt;
  N, I: Integer;
begin
  for I := 1 to 100 do
    begin
      A[I] := 0;
      B[I] := 0
    end;

  ReadLn(N);
  WriteLn('Enter array A...');
  for I := 1 to N do
    Read(A[I]);
  
  WriteLn('Enter array B...');
  for I := 1 to N do
    Read(B[I]);

  WriteLn('Before transfer...');
  WriteLn('Array A');
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn;

  WriteLn('Array B');
  for I := 1 to N do
    Write(B[I], ' ');
  WriteLn;

  for I := 1 to N do
    begin
      T := A[I];
      A[I] := B[I];
      B[I] := T
    end;

  WriteLn('After transfer...');
  WriteLn('Array A');
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn;

  WriteLn('Array B');
  for I := 1 to N do
    Write(B[I], ' ');
  WriteLn
end.
