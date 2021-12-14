program PointerExample(output);
var
  MyInteger: Integer;
  MyIntegerPointer: ^Integer;
  MyString: String;
  MyStringPointer: ^String;

begin
  MyInteger := 50;
  New(MyIntegerPointer);
  MyIntegerPointer^ := 100;
  WriteLn('Value of MyInteger = ', MyInteger, ', value of MyIntegerPointer^ = ', MyIntegerPointer^);

  MyInteger := MyIntegerPointer^;
  WriteLn('Value of MyInteger = ', MyInteger, ', value of MyIntegerPointer^ = ', MyIntegerPointer^);
  Dispose(MyIntegerPointer);

  MyString := 'Hello, world';
  MyStringPointer := @MyString;
  MyStringPointer^ := MyStringPointer^ + '!';
  WriteLn(MyString);
end.
