{ demo of command-line arguments in Pascal:
    ParamCount() returns the number of arguments passed in
    ParamStr(Idx) returns the value at argument Idx.
}

program CmdArgsDemo(input, output);
var
  I: Integer;

begin
  for I := 1 to ParamCount() do
    WriteLn('Arg[', I, '] = ', ParamStr(I))
end.
