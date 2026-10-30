function [u,M]=factlu(A,b)
% Factorización LU de la matriz A. Si se llama con dos argumentos de salida,
% calcula la factorización LU de A, guardando L y U en M, y la solución del 
% sistema.
% Con un sólo argumento, calcula sólo la solución, suponiendo que en A están 
% guardadas las matrices L y U.
n=size(A,1);
if nargout==2
   for i=1:n
      A(i,i)=A(i,i)-A(i,1:i-1)*A(1:i-1,i);
      for j=i+1:n
         A(i,j)=A(i,j)-A(i,1:i-1)*A(1:i-1,j);
         A(j,i)=(A(j,i)-A(j,1:i-1)*A(1:i-1,i))/A(i,i);
      end
   end
   M=A;
end
w=trinf1(A,b);
u=trsup(A,w);
