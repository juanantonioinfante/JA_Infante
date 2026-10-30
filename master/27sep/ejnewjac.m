function u=ejnewjac(x,iter,prec)
% Método de Newton-Jacobi de un paso para sistemas no lineales.
% (Ejemplo en dimensión 3).
% Los argumentos de entrada son: el vector inicial, el número 
% máximo de iteraciones y la precisión deseada.
format long e
for i=1:iter
   aux=f(x)./g(x);
   if norm(aux) < prec*norm(x)
      if norm(f(x)) < prec
         disp('La solución aproximada vale:')
         disp(' ')
         disp(x)
         disp(sprintf('tras realizar %d iteraciones', i))
         u(i,:)=x;
         break
      end
   end
   x=x-aux;
   u(i,:)=x;   
end
format

function y=f(x)
y(1)=3*x(1)+x(1)*x(2)*x(3)-4;
y(2)=x(1)+4*x(2)+x(3)+4;
y(3)=x(1)*x(2)+x(2)^2+2*x(3)^2+x(3)-1;

function y=g(x)
y(1)=3+x(2)*x(3);
y(2)=4;
y(3)=4*x(3)+1;


