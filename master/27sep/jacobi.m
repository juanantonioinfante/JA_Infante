%Método de Jacobi por puntos.
format long e
A=input('Dame la matriz ');
disp(' ')
disp(A)
n=size(A,1);
b=input('Dame el vector segundo miembro ' );
disp(' ')
disp(b)
maxit=input('¿Cuál es el número máximo de iteraciones permitidas? ');
prec=input('¿Cuál es la precisión deseada? ');
u=zeros(n,1);
iter=0;
norb=norm(b);
while iter<=maxit
   res=b'-A*u;
   dif=res./diag(A);
   u=u+dif;
   iter=iter+1;
   y(iter)=norm(res)/norb;
   if y(iter) < prec
      break
   end
end
if iter==maxit
   disp('Alcanzado el máximo de iteraciones.')
else
   fprintf('Se han realizado %d iteraciones.',iter)
end
disp('La solución aproximada vale: ')
disp(u)
format
x=1:iter;
plot(x,y)
title('Método de Jacobi por puntos')
xlabel('Iteraciones')
ylabel('Valor de la norma del residuo')



   
      
