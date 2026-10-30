% Método de eliminación gaussiana: PA=LU
A=input('Dame la matriz del sistema ');
n=size(A,1);
pun=1:n;
for k=1:n-1
   [m j]=max(abs(A(pun(k:n),k)));
   j=j+k-1;
   aux=pun(k);
   pun(k)=pun(j);
   pun(j)=aux;
   for i=k+1:n
      A(pun(i),k)=A(pun(i),k)/A(pun(k),k);
      A(pun(i),k+1:n)=A(pun(i),k+1:n)-A(pun(i),k)*A(pun(k),k+1:n);
   end
end
resp=1;
while resp
   s=sprintf('Dame un vector segundo miembro de %d coordenadas ',n);
   b=input(s);
   w(1)=b(pun(1));
   for i=2:n
      w(i)=b(pun(i))-A(pun(i),1:i-1)*w(1:i-1)';
   end
   u(n)=w(n)/A(pun(n),n);
   for i=n-1:-1:1
      u(i)=(w(i)-A(pun(i),i+1:n)*u(i+1:n)')/A(pun(i),i);
   end
   disp('La solución es: ')
   disp(u)
   disp('¿Quieres resolver otro sistema con esta matriz?')
   disp('En caso afirmativo teclea 1')
   resp=input('En caso negativo teclea 0    ');
end
