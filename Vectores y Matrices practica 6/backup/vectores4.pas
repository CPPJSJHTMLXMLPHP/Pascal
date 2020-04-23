{Realizar un programa que cargue un vector de 800 caracteres. Finalizada la carga informar:
a) La cantidad de caracteres que son consonantes y la cantidad de vocales
b) La cantidad de caracteres que son dígitos, la cantidad de letras mayúsculas y la cantidad de letras
minúsculas.}
{digitos: desde 48 hasta el 57}
{letras mayusculas: desde 65 a 90}
{letras minusculas: desde 97 a 122}
program vectores4
type
vector = Array [] of integer;
proccedure cargarvector(v1,var dig,var mayus,var minus,var vocales)
var
i:integer
begin
for(i:=1 to 800)do begin
 if(v[i]>= 48 and v[i]<= 57)then begin
   dig:= dig + 1;
   end else begin
 if(v[i]>=65 and v[i]<=90)then begin
   mayus:= mayus + 1;
   if(v[i] == 'A' or 'E' or 'I' or 'O' or 'U')then begin
   vocales:= vocales + 1;
     end
   end else begin if(v[i]>=97 to v[i]<122)then begin
   minus:= minus + 1;
   if(v[i] == 'a'OR'e'OR'i'OR'o'OR'u')then begin
   vocales:= vocales + 1 ;
     end
    end
 end
end
var
v1:vector;
dig,mayus,minus,vocales:integer;
Begin
dig:=0;
mayus:=o;
minus:=0;
vocales:=0;
read(v1);
cargarvector(v1,dig,mayus,minus,vocales);
wrtiteln('La cantidad de digitos dentro de los caracteres ingresados es:',dig);
wrtiteln('La cantidad de mayusculas dentro de los caracteres ingresados es:',mayus);
wrtiteln('La cantidad de minusculas dentro de los caracteres ingresados es:',minus);
writeln('El numero de vocales es:',vocales);
End
