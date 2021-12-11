{ Write a program to find the largest of three numbers }

program MaxThree(input, output);

var
  A, B, C, Max: Integer;

begin
  ReadLn(A, B, C);

  if A >= B then
    if A >= C then
      Max := A
    else 
      Max := C
  else if B >= C then
    Max := B
  else
    Max := C;

  WriteLn('The largest of ', A, ', ', B, ', and ', C, ' is ', Max)
end.
