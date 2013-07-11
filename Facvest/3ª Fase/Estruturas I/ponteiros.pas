{programa de ponteiros}

program LDE;
uses
 crt, dos;
type
 P=^forma;
 forma = record
  produto:string[30];
  prox:P;
 end;

var
 lista, prim, aux, lista_aux: P;
 op:char;
 opc:byte;

 menor : string[30];

{essa procedure eu repeti la no lasso do case pra poder rodar passo a passo}
{pode deixar essa aki e mexer so na outra la d baixo}
procedure ordenar;
var
 menor : string[30];
begin
 lista := prim;
 menor := 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzz';
 lista_aux := nil;
 if(lista = nil) then
  begin
   clrscr;
   writeln('Esta lista esta vazia, portanto nao pode ser ordenada!');
   readkey;
  end
  else
   begin
    repeat
{loop para achar o menor elemento da lista}
     while(lista <> nil) do
      begin
       if lista^.produto < menor then
        menor := lista^.produto;
      lista := lista^.prox;
      end;
{ao fim do loop o menor elemento da lista foi guardado em "menor"}

{guardar o menor na lista auxiliar}
     new(lista_aux);
     lista_aux^.produto := menor;
     lista_aux^.prox := nil;
{excluir elemento da lista original}
     if(lista = prim) then
      begin
       prim := lista^.prox;
       dispose(lista);
      end
      else
       begin
        aux := lista^.prox;
        dispose(lista);
        lista := aux;
       end;
     lista := lista^.prox;
    until(lista = nil);
 end;
{renomear lista ordenada em lista original para manter funcionalidade}
 lista := lista_aux;
end;

procedure inicializar;
begin
    lista := nil;
    prim := nil;
end;

procedure cria_lista;
begin
 clrscr;
 repeat
  if(prim = nil) then
   begin
    new(lista);
    write('Produto: '); readln(lista^.produto);
    lista^.prox:=nil;
    prim := lista;
   end
   else
    begin
     aux := lista;
     new(lista);
     aux^.prox:=lista;
     write('Produto: '); readln(lista^.produto);
     lista^.prox := nil;
    end;
  write('Novamente? <S/N> '); readln(op);
  op:=upcase(op);
 until(op='N');
end;

{por a procedure listar ser a unica q usa a procedure ordenar eu coloquei}
{ela la no lasso do case pra poder rodar passo a passo e verificar os bugs}
procedure listar;
begin
 ordenar;
 lista:=prim;
 clrscr;
 repeat
         writeln('produto : ',lista^.produto);
         lista:=lista^.prox;
 until(lista=nil);
 writeln;
 writeln('fim da lista');
 readkey;
end;

procedure elemento;
var cont:integer;
begin
    clrscr;
    cont:=0;
    lista:=prim;
    if lista<>nil then
    begin
        writeln('Primeiro: ',lista^.produto);
        while (lista^.prox<>nil) do
        begin
            inc(cont); {contando elementos}
            lista:=lista^.prox;
        end;
        inc(cont);
        writeln('ultimo: ',lista^.produto);
        writeln('quantidade: ',cont);
        end
        else
           write('lista vazia');
    readkey;
end;

procedure consultar;
var

    prod:string [30];
    flag:integer;
    op:char;
begin
    repeat
         clrscr;
         write('digite produto p/ consulta: ');readln(prod);
         {recebe nome p/ consulta}
         flag:=0;
         lista:=prim;
         if lista=nil then
         begin
                writeln('lista vazia');
         end
         else
         begin
             while((lista<>nil)and(flag=0))do
             begin
                 if lista^.produto=prod then
                 begin
                     writeln('produto: ',lista^.produto);
                     flag:=1;
                 end;
             lista:=lista^.prox;
         end;
         if flag=0 then
         begin
                writeln('produto n∆o consta na lista!');
         end;
         writeln;
         writeln('deseja nova pesquisa <s>ou<n>?');readln(op);
         op:=upcase(op);
         end;
    until (op='N');
end;

procedure exclusao;
var prod:string[30];
    flag:integer;

begin
    repeat
         clrscr;
         lista:=prim;
         if lista=nil then
         begin
             writeln('lista vasia');
             readkey;
         end
         else
         begin
             write('digite o produto p/ excluir: ');readln(prod);
             while lista<>nil do
             begin
                 if lista^.produto=prod then
                 begin
                     if lista=prim then
                     begin
                         prim:=lista^.prox;
                         dispose(lista);
                         flag:=1;
                     end
                     else
                     begin
                         aux^.prox:=lista^.prox;
                         dispose(lista);
                         flag:=1;
                         lista:=nil;
                     end;
                     if flag=0 then
                     begin
                         aux:=lista;
                         lista:=lista^.prox;
                     end;
                 end;
             end;
         end;
         writeln('deseja <C>continuar ou <S> sair: ');readln(op);op:=upcase(op);
    until (op='S');
end;

begin
 clrscr;
 inicializar;
 repeat
  clrscr;
  writeln('1 - Criar Lista');
  writeln('2 - Listar');
  writeln('3 - Consultar');
  writeln('4 - Elemento');
  writeln('5 - Exclusao');
  writeln('6 - Sair');
  writeln('Opcao: ');
  readln(opc);
  case opc of
   1 : cria_lista;
   2 : {listar;}

{------------------------------------------------------------------------}
begin
{inicio da ordenacao}
 lista := prim;
 menor := 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzz';
 lista_aux := nil;
 if(lista = nil) then
  begin
   clrscr;
   writeln('Esta lista esta vazia, portanto nao pode ser ordenada!');
   readkey;
  end
  else
   begin
    repeat
{loop para achar o menor elemento da lista}
     while(lista <> nil) do
      begin
       if lista^.produto < menor then
        menor := lista^.produto;
      lista := lista^.prox;
      end;
{ao fim do loop o menor elemento da lista foi guardado em "menor"}

{guardar o menor na lista auxiliar}
     new(lista_aux);
     lista_aux^.produto := menor;
     lista_aux^.prox := nil;
{excluir elemento da lista original}
     if(lista = prim) then
      begin
       prim := lista^.prox;
       dispose(lista);
      end
      else
       begin
        if(lista <> nil) then
         begin
{essa droga dessa parte ta dando merda}
{porra da mensagem; "invalid pointer operation"}
          aux := lista^.prox;
          dispose(lista);
          new(lista);
          lista := aux
         end
        else
         begin
          dispose(lista);
          new(lista);
          lista := prim;
{ate aqui vai o problema...} {ah, Juliano, eu to nervoso agora, sua bicha}
{Juliano, vai chupar meus bago seu viado...}
         end
       end;
     lista := lista^.prox;
    until(lista = nil);
 end;
{renomear lista ordenada em lista original para manter funcionalidade}
 lista := lista_aux;

{fim da ordenacao e inicio da listagem}
 lista:=prim;
 clrscr;
 repeat
         writeln('produto : ',lista^.produto);
         lista:=lista^.prox;
 until(lista=nil);
 writeln;
 writeln('fim da lista');
 readkey;
end;
{fim da listagem}
{------------------------------------------------------------------------}

   3 : consultar;
   4 : elemento;
   5 : exclusao;
   6 : exit;
  end;
 until(opc = 5);
 readkey;
end.