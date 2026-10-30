% Aproximacion de la funcion seno por un polinomio de grado 5 mediante minimos cuadrados.
% Varios metodos.
format long e
x=[1:100]';
y=sin(x);
A=[x.^5 x.^4 x.^3 x.^2 x ones(100,1)];
C=A'*A;
b=A'*y;
B=chol(C);
w=B'\b;
unor=B\w
[Q,R]=qr(A,0);
uqr=R\(Q'*y)
[U,S,V]=svd(A,0);
w=S\(U'*y);
usvd=V*w
upinv=pinv(A)*y
pause
umat=A\y
nunor=norm(unor-umat);
disp('Diferencia con ec. normales')
disp(nunor)
nuqr=norm(uqr-umat);
disp('Diferencia con qr reducida')
disp(nuqr)
nusvd=norm(usvd-umat);
disp('Diferencia con svd reducida')
disp(nusvd)
nupinv=norm(upinv-umat);
disp('Diferencia con pseudoinv.')
disp(nupinv)
