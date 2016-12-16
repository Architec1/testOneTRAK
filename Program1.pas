Program z518;

const n = 5;

var
  A: array [1..n] of array [1..n] of integer;
  B: array [1..n] of array [1..n] of integer;
  C: array [1..n] of integer;
  i, j, l: byte;

begin
  
  writeln('Введите массив A размером (',n,'x',n,'): ');
  for i:= 1 to n do
    for j:= 1 to n do
      read(A[i,j]);
  writeln();

  
  for j:= 1 to n do
  begin
    for i:= 1 to n do C[i]:=A[i,j];
    for l:= 1 to n do
    begin
      B[j,l]:=C[n-l+1];
    end;
  end;
  
  writeln('Массив A повернутый на 90 градусов: ');
  for i:= 1 to n do
  begin
    for j:= 1 to n do
      write(B[i,j],' ');
    writeln();
  end;
  writeln();
  
end.