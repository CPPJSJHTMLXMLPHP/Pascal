program vectores7
type
vectormadre = Array[1..64]of vectorbytes
vectorbytes = Array[] of byte; {puedo usar un character para separar los valores}
proccedure nd(vm,a,b,var res)
var
opa:byte;
opb:byte;
begin
opa:=vm[a];
opb:=vm[b];
res:=opa*opb;
end
proccedure Orr(a,b,var res1)
var
opa:byte;
opb:byte;
begin
opa:=vm[a];
opb:=vm[b];
res:= opa + opb;
end
proccedure Nott(a,var res2)
var
i:integer
begin
i:=1;
while(a[i] <> '')do begin
if(a[i] == 1)then begin
 a[i]:=0;
    end else if(a[i] == 0)then begin
     a[i]:=1;
     end
i++;
 end
end
var {Main Program}
vm:vectormadre;
vb:vectorbytes;
a:vectormadre;
b:vectormadre;
res:byte;
op:string;
Begin
read('ingrese hasta 64 valores binarios',vb);
read('ingrese la operacion',op);
while(op <> 'exit')do begin
 if(op == 'nd')then begin
 readln('ingrese primer operando',a);
 readln('ingrese segundo operando',b);
 nd(vm,a,b,res);
 write('resultado:',res);
      end
 if(op == 'or')then begin
 readln('ingrese primer operando',a);
 readln('ingrese segundo operando',b);
 orr(vm,a,b,res);
 write('el resultado es:',res);
 end
 if(op == 'not')then begin
 readln('ingrese operando',a);
 Nott(vm,a,res)
 end
 read('ingrese la operacion siguiente',op);
end
End

