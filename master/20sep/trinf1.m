function v=trinf1(A,b)

%Resuelve el sistema Av=b donde A es una matriz triangular inferior
%con unos en la diagonal.

v(1)=b(1);
n=size(A,1);
for i=2:n
   v(i)=b(i)-A(i,1:i-1)*v(1:i-1)';
end
