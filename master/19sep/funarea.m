fstr=input('Dame la función \ncon la variable que te dé la gana ','s');
f=inline(vectorize(fstr));
a=input('Dame el extremo izquierdo del intervalo ');
b=input('Dame el extremo derecho del intervalo ');
disp(' ')
area=double(int(fstr,a, b));
disp(['El valor exacto es ' num2str(area) ])
disp(' ')
m=input('Dame el número de subintervalos ');
disp(' ')
h=(b-a)/m;
x=a:h:b;
suma=sum(f(x(2:m)));
areatrap=(h/2)*(f(a)+f(b)+2*suma);
disp(['El valor aproximado con ' num2str(m) ' trapecios es ' num2str(areatrap) ])