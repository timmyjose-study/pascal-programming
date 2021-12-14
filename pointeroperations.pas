program PointerOperations(output);
type
  IntPtr = ^Integer;
  RealPtr = ^Real;

var
  MyIntegerPointer, AnotherIntegerPointer: IntPtr;
  MyRealPointer: RealPtr;

begin
  New(MyIntegerPointer);
  New(MyRealPointer);
  New(AnotherIntegerPointer);

  MyRealPointer^ := 2.25;
  MyIntegerPointer^ := 500;
  AnotherIntegerPointer^ := 400;

  MyRealPointer^ := MyIntegerPointer^;
  MyIntegerPointer := AnotherIntegerPointer;
  WriteLn('MyRealPointer^ = ', MyRealPointer^:0:2);

  if MyIntegerPointer = AnotherIntegerPointer then
    WriteLn('MyIntegerPointer and AnotherIntegerPointer point to the same location');

  WriteLn('MyIntegerPointer^ = ', MyIntegerPointer^, ', AnotherIntegerPointer^ = ', AnotherIntegerPointer^);
  
  Dispose(MyRealPointer);
  Dispose(MyIntegerPointer);
  Dispose(AnotherIntegerPointer)
end.
