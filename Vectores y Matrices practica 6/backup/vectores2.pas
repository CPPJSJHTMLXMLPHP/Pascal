{consigna: Realizar un programa que lee de teclado una secuencia de letras minúsculas que termina en punto.
Informar la cantidad de veces que aparece cada letra de la ´a´ a la ´z´.}
program vectores2
type vectorteclado = Array [] of string;
proccedure analizarteclado(v1) {aca consigo repetidas}
var
i:integer;
res:string;
begin
i:=1;
cont:=0;
while(v2[i] <> '')do begin
 if(letra == v2[i])then begin
 cont:=cont+1
 end
 i:= i + 1;
  end
end
var
{Me parece que voy a intentar iterar en cada letra de las ingresadas sin tener que usar el total}
total:string;
v2:vectorteclado;
cont:integer;
letra:string;
i:integer;
begin
i:=1;
read(v2);
while (v2[i] <> '.')do begin
letra:= v2[i]
analizarteclado(v2,letra,cont);
write('la letra:',letra'aparece',cont' veces');
total:= total + 'la letra:' , letra + 'veces:' + cont + '' ;
end
End
