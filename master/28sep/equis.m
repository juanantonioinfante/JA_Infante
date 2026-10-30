% Con n=40 el tamaño de la matriz es 80x120=9600 elementos
% La imagen se reproduce con 644 elementos.
n=40;
a=zeros(n,3*n);
for i=1:n
   a(i,i:i+n-1)=ones(1,n);
   a(i,2*n-i+2:3*n-i+1)=ones(1,n);
end
a=[a;flipud(a)];
spy(a,20)
pause
[u,s,v]=svd(a);
b=zeros(size(a));
sg=diag(s);
for i=1:4
   b=b+sg(i)*u(:,i)*v(:,i)';
   spy(abs(b>0.11),20)
   pause
end

