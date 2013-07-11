{ponteiros  ฏ variaveis estaticas ฏ e umavariavel que ocupa um espaco
              permanete enquanto o programa ou procedure estiver ativa


            ฏ variaveis dinamicas ฏ ocupa/libera espaco de memoria
              sao aqueles caracterizadas por um tipo chamado ponteiro
              as quais alocam um espaco e quando nao necessario
              desalocam este espaco de memoria RAM.


                  p:^tipo  {integer
                           {real
                           {string
                           {char
                           {type record



                           inicializacao:

                           est tico:    x:integer;
                                        x:=0;


                           dinamico:    x:^tipo
                                        x:nil;


ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
programa exemplo de ponteiros}

{{{{{{{{  construir um programa para criar uma lista DINAMICA encadeada
{{{{{{{{  p/ produtos de informatica


        procedures: cria_lista;................................OK
                    listar;....................................OK
                    consulta;..................................OK
                    elemento DESCOBRIR 1ง,ULTI E QUATD ;
                    INSERIR ;
                    ORDENAR ;
                    ALTERAR ;
                    EXCLUIR ;
ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ}


program LDE;
uses crt,dos;
type
      P=^forma;
      forma = record
                    produto:string[30];
                    prox:P;             { prox funciona como lig,}
                                        { que  do tipo P que 
                                        { do tipo forma }
              end;

var
   lista: P;
   prim: P;
   aux: P;
   op:char;
   opc:byte;

procedure inicializar;
begin
    lista:=nil;
    prim:=nil;            {inicializa a lista como se fosse zero}
end;

procedure cria_lista;
begin
    repeat
         clrscr;
         if prim=nil then
         begin
             new(lista);
             writeln('entre com o produto:');
             read(lista^.produto);
             lista^.prox:=nil;
             prim:=lista;
         end
         else
         begin
             aux:=lista;
             new(lista);
             aux^.prox:=lista;
             write('entre com o produto: ');
             readln(lista^.produto);
             lista^.prox:=nil;
         end;
         writeln('deseja incluir + elementos ?<s>ou<n>');
         readln(op);op:=upcase(op);
    until (op='N');
end;

procedure listar;
begin
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
         write('digite produto p/ consulta: ');readln(prod);{recebe nome p/ consulta}
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
                writeln('produto nฦo consta na lista!');
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


begin                {princpal}
    textbackground(white);
    textcolor(black);
    clrscr;
    inicializar;
    repeat
         clrscr;
         gotoxy(2,1);write('1-Criar Lista');
         gotoxy(19,1);write('2-Listar');
         gotoxy(31,1);write('3-consultar');
         gotoxy(45,1);write('4-elemento');
         gotoxy(2,3);write('5-exclusao');
         gotoxy(70,1);write('6-abandonar');
         gotoxy(32,25);write('digite-> <-');gotoxy(40,25);readln(opc);
         case opc of
                    1:cria_lista;
                    2:listar;
                    3:consultar;
                    4:elemento;
                    5:exclusao;
                    6:exit;
         end;
    until (opc=5);
    readkey;
end.


























































