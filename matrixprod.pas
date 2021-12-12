{ find the product of two matrices }

program MatrixProd(input, output);
type
  Matrix = array[1..100, 1..100] of LongInt;

var
  A, B, C: Matrix;
  N, M, P, Q, I, J: Integer;

procedure ReadMatrix(var A: Matrix; N, M: Integer);
var
  I, J: Integer;
begin
  for I := 1 to N do
    for J := 1 to M do
      Read(A[I, J])
end;

procedure DisplayMatrix(A: Matrix; N, M: Integer);
var
  I, J: Integer;
begin
  for I := 1 to N do
    begin
      for J := 1 to M do
        Write(A[I, J], ' ');
      WriteLn
    end
end;

{
  Given two matrices A(N, M) and B(M, Q), C = A x B has dimensions [N, Q].
  Each cell of C is calculated using the formula:

    C[I, J] := Sigma(K := 1 to M) A[I, K] * B[K, J]

}
procedure MultiplyMatrices(N, M, Q: Integer; A, B: Matrix; var C: Matrix);
var 
  I, J, K: Integer;
begin
  for I := 1 to N do
    for J := 1 to Q do
        for K := 1 to M do
          C[I, J] := C[I, J] + A[I, K] * B[K, J]
end;

begin
  for I := 1 to 100 do
    for J := 1 to 100 do
      begin
        A[I, J] := 0;
        B[I, J] := 0;
        C[I, J] := 0
      end;

  ReadLn(N, M);
  WriteLn('Enter the first matrix');
  ReadMatrix(A, N, M);
  DisplayMatrix(A, N, M);

  Read(P, Q);
  if P <> M then
    begin
      WriteLn('Incompatible matrices - dimensions do not match up');
      Exit
    end;

  WriteLn('Enter the second matrix');
  ReadMatrix(B, P, Q);
  DisplayMatrix(B, P, Q);

  MultiplyMatrices(N, M, Q, A, B, C);
  DisplayMatrix(C, N, Q);
end.
