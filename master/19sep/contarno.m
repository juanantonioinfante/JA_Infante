cad='No, esto no es lo que yo opino ni lo que tú piensas; creo que no';
%cad=input('Dame la frase: ','s');
cont=0;
if cad([1:3])=='No ' | cad([1:3])=='No,' | cad([1:3])=='No;'
   cont=cont+1;
end
aux=find(cad==' ');
l=length(aux)-1;
indices=aux(1:l)+1;
for i=indices
   if cad([i:i+2])=='no ' | cad([i:i+2])=='no,' | cad([i:i+2])=='no;'
      cont=cont+1;
   end
end
if cad([length(cad)-2:length(cad)])==' no'
   cont=cont+1;
end
disp(cont)