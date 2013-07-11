program lista_dinamica_duplamente_encadeada;

uses crt,dos;

type
 P=^forma;
 forma=record
 prod:string[30];
 prox:P;
 ant:P;
end;

var
 ld:P;
 prim:P;
 aux :P;
 ord :P;
 lista_criada:boolean;

procedure menu;forward;
procedure ordena;forward;

procedure inicializar;
 begin
  ld:=nil;
  prim:=nil;
  aux:=nil;
  lista_criada:=false;
 end;

procedure letra(x,y,cor:byte;l:char);
 begin
  textcolor(white);textbackground(cor);
  gotoxy(x,y);write(l);
  textcolor(black);textbackground(white);
 end;

function confirma:boolean;
 var op:char;
 begin
  op:=' ';
  repeat
   writeln('deseja continuar?<S>ou<N>');op:=readkey;op:=upcase(op);
    if op='S'then
     confirma:=false;
    if op='N'then
     confirma:=true;
  until(op='S')or(op='N');
 end;

procedure criar;
 var op,opi:char;
 begin
  clrscr;
  if(lista_criada)then
   begin
    repeat
     write('Deseja inserir ordenadamente?<S>ou<N>: ');readln(opi);opi:=upcase(opi);
    until(opi='S')or(opi='N');
   end;
  repeat
   clrscr;
   if prim=nil then
    begin
     new(ld);
     write('entre com o produto: ');readln(ld^.prod);
     ld^.prox:=nil;
     ld^.ant:=nil;
     prim:=ld;
     aux:=ld;
    end
   else
    begin
     new(ld);
     write('entre com o produto: ');readln(ld^.prod);
     ld^.ant:=aux;
     aux^.prox:=ld;
     aux:=ld;
     ld^.prox:=nil;
     aux:=ld;
    end;
  until(confirma);
  lista_criada:=true;
  if opi='S'then
  ordena;
 end;

procedure listarIF;
 begin
  clrscr;
  ld:=prim;
  if ld=nil then
   begin
    write('lista vazia');
    readkey;
   end
  else
   begin
    while (ld<>nil) do
     begin
      writeln('produto: ',ld^.prod);
      ld:=ld^.prox;
     end;
    readkey;
   end;
 end;

procedure listarFI;{ do fim p/ inicio}
 begin
  clrscr;
  ld:=prim;
  if ld=nil then
   begin
    write('lista vazia');
    readkey;
   end
  else
   begin
    while (ld^.prox<>nil)do
     ld:=ld^.prox;
    while (ld<>nil) do
     begin
      writeln('produto: ',ld^.prod);
      ld:=ld^.ant;
     end;
    readkey;
   end;
 end;

procedure menu_listar;
 var op:byte;
 begin
  clrscr;
  repeat
   gotoxy(25,10);write('1- do inicio para o fim');
   gotoxy(25,12);write('2- do fim para o inicio');
   gotoxy(25,14);write('3- voltar');
   gotoxy(25,18);write('digite> <');gotoxy(32,18);readln(op);
   case op of
    1:listarIF;
    2:listarFI;
    3:menu;
   end;
  until(op=1)or(op=2)or(op=3);
 end;

procedure info;
 var meio:P;cont:integer;
 begin
  clrscr;
  ld:=prim;
  if ld=nil then
   begin
    write('lista vazia');
    readkey;
   end
else
begin
gotoxy(15,10);write('primeiro: ',ld^.prod);
writeln;
writeln;
cont:=1;
while(ld^.prox<>nil) do
begin
ld:=ld^.prox;
inc(cont);
end;
gotoxy(15,14);write('ultimo: ',ld^.prod);
writeln;
cont:=cont div 2;
ld:=prim;
repeat
 ld:=ld^.prox;
 cont:=cont-1;
until(cont=1);
writeln;
gotoxy(15,12);write('meio: ',ld^.prod);
gotoxy(20,20);write('readkey');
readkey;
end;
end;
{------------ ordenaá∆o----------------}
procedure ordena;
var trocou:byte;produto:string[30];
begin
trocou:=0;
clrscr;
ld:=prim;
if ld=nil then
begin
 write('lista vazia');
 readkey;
end
else
begin
repeat
 aux:=prim;
 ld:=prim;
 ld:=ld^.prox;
 trocou:=0;

 while aux^.prox<>nil do
 begin
 if aux^.prod>ld^.prod then
 begin
 trocou:=1;
 produto:=aux^.prod;
 aux^.prod:=ld^.prod;
 ld^.prod:=produto;
 aux:=ld;
 ld:=ld^.prox;
 end
 else begin
 aux:=ld;
 ld:=ld^.prox;
end;

 end;

 until (trocou=0);
 listarif;
 end;
end;
{-------------- procedure exclusao ------------------------}
procedure excluir;
var
 prod : string[30];
 op : char;
 flag : byte;
begin
 repeat
clrscr;
ld := prim;
aux := prim;
flag := 0;
if(ld = nil) then
 begin
writeln('Lista Vazia'); readkey;
op:='N';
 end
else
 begin
flag := 0;
op := 'S';
ld := prim;
writeln('Produto a Excluir: '); readln(prod);
while( (ld <> nil) and (flag = 0) ) do
 begin
 if(prod = ld^.prod) then
 begin
flag:=1;
if(ld^.ant = nil) then
 if(ld^.prox = nil) then
begin
dispose(ld);
inicializar;
end
 else
begin
 ld^.prox^.ant := nil;
 prim := ld^.prox;
 aux := ld^.prox;
 dispose(ld);
 ld := prim;
end
else
if(ld^.prox = nil) then
 begin
aux^.prox := ld^.prox;
dispose(ld);
ld := aux;
 end
else
 begin
aux^.prox := ld^.prox;
ld^.prox^.ant := aux;
dispose(ld);
ld := aux^.prox;
 end;
 end
else
 begin
aux := ld;
ld := ld^.prox;
 end;
 end;
if flag=0 then
writeln('Produto Inexistente');
 end;
 until(confirma);
end;
{---------------- procedure alterar -----------------------}
procedure alterar;
var valor:string[30];achou:boolean;
begin
repeat
 clrscr;
 ld := prim;
 aux := prim;
 achou:=false;
 if(ld = nil) then
 begin
 writeln('Lista Vazia'); readkey;
 end
 else
 begin
 write('digite valor para alterar: ');readln(valor);
 while ld<>nil do
 begin
 if ld^.prod=valor then
 begin
 writeln;writeln('alterar o valor "',ld^.prod,'" para:[] ');
 gotoxy(26+length(valor),3);readln(ld^.prod);
 achou:=true;
 writeln;writeln('valor alterado com susseáo');
 end
 else
 begin
 ld:=ld^.prox;
 end;
 end;
 if (not achou)and(ld=nil)then
 begin
 writeln;writeln('produto "',valor,'" n∆o encontrado!');
 end;
 end;
 writeln;
until(confirma);
end;

procedure menu;
var op:char;
begin
repeat
 textbackground(white);
 textcolor(black);
 clrscr;
 gotoxy(20,1);write('LISTA DINAMICA DUPLAMENTE ENCADEADA');
 if not(lista_criada)then
 begin
 letra(30,4,3,'C');write('ria');
 end else begin
letra(30,4,3,'I');write('nserir');
 end;
 letra(30,6,3,'l');write('istar');
 letra(30,8,3,'N');write('otas');
 letra(30,10,3,'O');write('rdenar');
 letra(30,12,3,'A');write('lterar');
 letra(30,14,3,'E');write('xcluir');
 letra(30,16,3,'S');write('air');
 gotoxy(32,22);write('opc∆o: ');op:=readkey;op:=upcase(op);
 case op of
 'C':criar;
 'I':criar;
 'L':menu_listar;
 'N':info;
 'O':ordena;
 'A':alterar;
 'E':excluir;
 'S':exit;
 end;
until (op='S');
end;


begin
textbackground(white);
clrscr;
inicializar;
menu;
end.



