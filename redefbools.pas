{ Booleans constants `true` and `false` can be redefined as variables - not a great idea }

program RedefBools;

var
  True: Boolean;

begin
  True := false;

  if True then
    WriteLn('This line will never be seen')
  else
    WriteLn('This line will be seen');
end.
