A=input('Dame la matriz del sistema ');
n=size(A,1);
for k=1:n-1
   x=A(k:n,k);
   if x(1)~=0
      v(k:n,k)=[sign(x(1))*norm(x)+x(1);x(2:n-k+1)];
   else
      v(k:n,k)=[norm(x)+x(1);x(2:n-k+1)];
   end
   v(k:n,k)=v(k:n,k)/norm(v(k:n,k));
   A(k:n,k:n)=A(k:n,k:n)-2*v(k:n,k)*(v(k:n,k)'*A(k:n,k:n));
end
resp=1;
while resp
   s=sprintf('Dame un vector segundo miembro de %d coordenadas ',n);
   b=input(s);
   b=b(:);
   for k=1:n-1
      b(k:n)=b(k:n)-2*v(k:n,k)*(v(k:n,k)'*b(k:n));
   end
   u(n)=b(n)/A(n,n);
   for i=n-1:-1:1
      u(i)=(b(i)-A(i,i+1:n)*u(i+1:n)')/A(i,i);
   end
   disp('La solución es: ')
   disp(u)
   disp('¿Quieres resolver otro sistema con esta matriz?')
   disp('En caso afirmativo teclea 1')
   resp=input('En caso negativo teclea 0    ');
end
