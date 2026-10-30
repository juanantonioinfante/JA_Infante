function [u,M]=factchol(A,b)
% Factorización de Cholesky de la matriz A. Si se llama con dos 
% argumentos de salida, calcula la factorización de Cholesky de A,
% guardando B en M, y la solución del sistema.
% Con un sólo argumento, calcula sólo la solución, suponiendo que 
% en A está guardada la matriz B.
n=size(A,1);
if nargout==2
   for i=1:n
      A(i,i)=sqrt(A(i,i)-A(i,1:i-1)*A(i,1:i-1)');
      for j=i+1:n
         A(j,i)=(A(i,j)-A(i,1:i-1)*A(j,1:i-1)')/A(i,i);
      end
   end
   M=A;
end
w=trinf(A,b);
u=trsup(A',w);
