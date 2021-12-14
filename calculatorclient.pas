program CalculatorClient(input, output);
uses Calculator;

var
  N, M: Int64;

begin
  WriteLn('Enter two numbers');
  ReadLn(N, M);

  WriteLn(N, ' + ', M, ' = ', AddNums(N, M));
  WriteLn(N, ' - ', M, ' = ', SubNums(N, M));
  WriteLn(N, ' * ', M, ' = ', MulNums(N, M));
  WriteLn(N, ' / ', M, ' = ', DivNums(N, M))
end.
