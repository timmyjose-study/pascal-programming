unit Calculator;

interface

function AddNums(X, Y: Int64): Int64;
function SubNums(X, Y: Int64): Int64;
function MulNums(X, Y: Int64): Int64;
function DivNums(X, Y: Int64): Int64;

implementation

function AddNums(X, Y: Int64): Int64;
begin
  AddNums := X + Y
end;

function SubNums(X, Y: Int64): Int64;
begin
  SubNums := X - Y
end;

function MulNums(X, Y: Int64): Int64;
begin
  MulNums := X * Y
end;

function DivNums(X, Y: Int64): Int64;
begin
  DivNums := X div Y
end;

begin
end.
