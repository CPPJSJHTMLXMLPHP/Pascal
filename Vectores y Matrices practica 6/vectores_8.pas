program vectores8
{
Simular el funcionamiento de un conjunto de caracteres de la ‘a’ a la ‘z’ utilizando un arreglo. Defina
un tipo de datos adecuado e implemente módulos que realicen las operaciones de unión y diferencia
de dos conjuntos y una función que permite determinar si una letra pertenece al conjunto.
Nota: realice los chequeos correspondientes en cada módulo para procesar solo letras. 
}
var 
let: 'a'..'z';
{letras: set of let: tenemos que remplazar el conjunto con el uso de un array}
type
vectormatrix = Array[1..1000]of vectorchar;{seria necesario para despues acceder pero solo queremos operar con dos conjuntos}
vectorchar = Array[] of char;

proccedure check(a,b,var cond)
begin
if(a in let and b in let)then begin
cond:= true;
 end else then begin
cond:= false; 
 end
end
proccedure un(a,b,var res)
begin
res:= a+b;
end
proccedure dif(a,b,var res)
begin
res:=a-b;
end
var
res:vectorchar;
a:vectorchar;
b:vectorchar;
op:string;
cond: boolean; {this is the condition of the entered data}
begin
cond:= false;
write('Las operaciones disponibles son union y diferencia')
readln('ingrese la operacion',op);
while(op <> 'exit') do begin
if(op == 'union')then begin
readln('ingrese el primer conjunto de letras',a);
readln('ingrese el segundo conjunto de letras',b);
check(a,b);
if(cond == true)then begin
un(a,b);
end else begin
write('Los elementos ingresados no corresponden con el tipo esperado');
end 
 end else if(op == 'diferencia')then begin
 readln('ingrese el primer conjunto de letras',a);
readln('ingrese el segundo conjunto de letras',b);
check(a,b);
if(cond == true)then begin
dif(a,b);
end else begin
write('Los elementos ingresados no corresponden con el tipo esperado');
  end 
 end
end
readln('ingrese el primer conjunto de letras',a);
readln('ingrese el segundo conjunto de letras',b);

end; 
