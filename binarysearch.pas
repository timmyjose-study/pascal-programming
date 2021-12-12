{ Binary Search on an input array after sorting using Bubble Sort }

program BinarySearch(input, output);
type
  Arr = array[1..100] of LongInt;

var
  A: Arr;
  E: LongInt;
  N, I, Pos: Integer;

procedure Display(A: Arr; N: Integer);
var
  I: Integer;
begin
  for I := 1 to N do
    Write(A[I], ' ');
  WriteLn
end;

procedure BubbleSort(var A: Arr; N: Integer);
var
  I, J: Integer;

procedure Swap(var X, Y: LongInt);
var
  T: LongInt;
begin
  T := X;
  X := Y;
  Y := T
end;

begin
  for I := 1 to N do
    for J := 1 to N-1 do
      if A[J] > A[J+1] then
        Swap(A[J], A[J+1])
end;

function BinarySearch(A: Arr; N: Integer; E: LongInt): Integer;
var
  Low: Integer;
  High: Integer;
  Mid: Integer;
  Pos: Integer = 0;
begin
  Low := 1;
  High := N;

  repeat
    Mid := (Low + High) div 2;
    if E < A[Mid] then
        High := Mid - 1
    else if E > A[Mid] then
        Low := Mid + 1
    else 
      begin
        Pos := Mid;
        break
      end
  until Low > High;

  BinarySearch := Pos
end;

begin
  for I := 1 to 100 do
    A[I] := 0;

  ReadLn(N);
  for I := 1 to N do
    Read(A[I]);

  Display(A, N);
  BubbleSort(A, N);
  Display(A, N);
  ReadLn(E);

  Pos := BinarySearch(A, N, E);
  if Pos = 0 then
    WriteLn('Not found')
  else
    WriteLn('Found at position ', Pos)
end.
