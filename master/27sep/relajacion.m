%Método de Relajación por puntos.
format long e
A=input('Dame la matriz ');
disp(' ')
disp(A)
n=size(A,1);
b=input('Dame el vector segundo miembro ' );
disp(' ')
disp(b)
w=input('Dame el parámetro de relajación, omega= ');
maxit=input('¿Cuál es el número máximo de iteraciones permitidas? ');
prec=input('¿Cuál es la precisión deseada? ');
u=zeros(n,1);
iter=0;
norb=norm(b);
while iter<=maxit
   for i=1:n
      res(i)=b(i)-A(i,:)*u(:);
      dif(i)=w*res(i)/A(i,i);
      u(i)=dif(i)+u(i);
   end
   iter=iter+1;
   y(iter)=norm(res)/norb;
   if y(iter)< prec
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
s=sprintf('Método de Relajación por puntos para omega = %1.1f',w);
title(s)
xlabel('Iteraciones')
ylabel('Valor de la norma del residuo')

   
      
