program StringFunctions(output);
var
  Str1, Str2, Str3: String;
begin
  Str1 := 'Hello, ';
  WriteLn('Length(', Str1, ') = ', Length(Str1));
  Str2 := 'world! ';
  Str3 := 'nice to meet you again!';

  WriteLn(Concat(Str1, Str2, Str3));
  WriteLn(Str1 + Str2 + Str3);

  Str1 := 'I love ';
  Str2 := 'Mathematics';
  Insert(Str1, Str2, 0);
  WriteLn(Str2);

  Delete(Str2, 1, 7);
  WriteLn(Str2)
end.
