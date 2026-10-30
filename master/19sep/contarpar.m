nfil=fix(10*rand(1))+1;
ncol=fix(10*rand(1))+1;
A=fix(10*rand(nfil,ncol))+1;
% A=[A 2*ones(size(A,1),1)]
disp('La matriz creada es:')
disp(A)
log=rem(A,2)==0;
col=1:ncol;
colp=col(sum(log,1)==nfil);
% Las 2 lineas anteriores se pueden sustituir por 
% colp=find(sum(log,1)==nfil);
% o por
% colp=find(all(log));
if isempty(colp)
   disp('Ninguna columna tiene todos sus elementos pares')
else
   disp('Las columnas que tienen todos los elementos pares son:')
   disp(colp)
   disp('La matriz formada por esas columnas es:')
   disp(A(:,colp))
end
fil=1:nfil;
filp=fil(sum(log,2)==ncol);
if isempty(filp)
   disp('Ninguna fila tiene todos sus elementos pares')
else
   disp('Las filas que tienen todos los elementos pares son:')
   disp(filp)
   disp('La matriz formada por esas filas es:')
   disp(A(filp,:))
end
log2=all(A==2);
if any(log2)
   col2=col(log2);
   disp(['La(s) columna(s) ' num2str(col2) ' está(n) formada(s) sólo por doses'])
end


