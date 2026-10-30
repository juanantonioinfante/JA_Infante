fstr=input('Dame la función \ncon la variable que te dé la gana ','s');
f=inline(vectorize(fstr));
x=0:7;
y=f(x)
fplot(f,[0 7])
pause
fprima=inline(vectorize(diff(fstr)));
y=fprima(x)
hold on
fplot(fprima,[0 7])
