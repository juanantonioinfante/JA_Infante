%Manejo de cadenas de caracteres
a='esto';
b=' es una';
c=' cadena';
disp(' ')
d=[a b c];
disp(['La cadena d es: ' d])
disp(' ')
disp(['La tercera letra de la cadena d es ' d(3)])
e=sum(d=='e'); % Número de veces que aparece la letra e en la cadena d.
disp(' ')
disp(['La cadena d tiene ' num2str(e) ' veces la letra e'])
no_a=sum(d~='a'); % Número de caracteres que no son la letra a en d.
disp(' ')
disp(['La cadena d tiene ' num2str(length(d)) ' caracteres' ...
      ' de los cuales ' num2str(no_a) ' no son a'])
disp(' ')
disp(['y ' a ' es otra' c ' distinta de la cadena ''' d ''''])
