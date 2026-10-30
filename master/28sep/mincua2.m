format long e
x=[0:0.01:1]';
y=exp(sin(4*x));
A=[ones(101,1)];
for i=1:14
   A=[x.^i A];
end
umat=A\y;
y=y/umat(1);
C=A'*A;
b=A'*y;
unor=C\b;
disp('Con ec. normales')
disp(unor(1))
[Q,R]=qr(A,0);
uqr=R\(Q'*y);
disp('Con qr reducida')
disp(uqr(1))
[U,S,V]=svd(A,0);
w=S\(U'*y);
usvd=V*w;
disp('Con svd reducida')
disp(usvd(1))
upinv=pinv(A)*y;
disp('Con pseudoinv.')
disp(upinv(1))

