{ a simple basic mathematical calculator }

program CaseArith(input, output);
var
  X, Y: LongInt;
  Op: Char;
  Res: Real = 0;
begin
  ReadLn(X, Y);
  ReadLn(Op);
  
  case Op of
  '+': Res := X + Y;
  '-': Res := X - Y;
  '*': Res := X * Y;
  '/': Res := X / Y;
  else
    begin
      WriteLn('Unknown operator ', Op);
      Exit
    end
  end;

  WriteLn(X, Op, Y, ' = ', Res:0:3)
end.
