function u=ejnewgs(x,iter,prec)
% Método de Newton-Gauss-Seidel de un paso para sistemas no lineales.
% (Ejemplo en dimensión 3).
% Los argumentos de entrada son: el vector inicial, el número 
% máximo de iteraciones y la precisión deseada.
format long e
for i=1:iter
   aux(1)=f1(x)/g1(x);
   aux(2)=(f2(x)-h1(x)*aux(1))/g2(x);
   aux(3)=(f3(x)-h2(x)*aux(1)-h3(x)*aux(2))/g3(x);
   if norm(aux) < prec*norm(x)
      if norm([f1(x),f2(x),f3(x)]) < prec
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

function y=f1(x)
y=3*x(1)+x(1)*x(2)*x(3)-4;
function y=f2(x)
y=x(1)+4*x(2)+x(3)+4;
function y=f3(x)
y=x(1)*x(2)+x(2)^2+2*x(3)^2+x(3)-1;

function y=g1(x)	%diagonal de la jacobiana
y=3+x(2)*x(3);
function y=g2(x)
y=4;
function y=g3(x)
y=4*x(3)+1;

function y=h1(x)	%elementos de la parte tr. inferior
y=1;
function y=h2(x)
y=x(2);
function y=h3(x)
y=2*x(2);


