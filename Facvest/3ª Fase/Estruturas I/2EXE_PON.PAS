{ponteiros  ฏ variaveis estaticas ฏ e umavariavel que ocupa um espaco
              permanete enquanto o programa ou procedure estiver ativa
bienloko@bol.com.br

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
                    elemento descobrir 1ง,ulti e quatd ;.......OK
                    INSERIR ;
                    ORDENAR ;
                    ALTERAR ;
                    excluir;...................................OK
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
   opc,cont:byte;
   menor:string[30];
procedure menu;forward;
procedure inserir;forward;
procedure elemento;forward;

procedure inicializar;
begin
    lista:=nil;
    prim:=nil;            {inicializa a lista como se fosse zero}
end;
procedure setar;
begin
    lista:=prim;
end;
function confirma:boolean;
var op1:char;
begin
    repeat
         writeln;
         write('Deseja continuar operaฝฦo sim<S> ou nฦo<N>? ');
         readln(op1);op1:=upcase(op1);
         if op1='S'then
         begin
             confirma:=true;
         end
         else
            confirma:=false;
    until (op1='S')or(op1='N');
end;
procedure acha_menor;
var i:byte;
begin
    elemento;
    clrscr;
    i:=1;
    setar;
    repeat
    while lista<>nil do
    begin
        if lista^.produto<menor then
           menor:=lista^.produto;
        lista:=lista^.prox;
    end;
    writeln;
    writeln('produto menor: ',menor);
    while lista<>nil do
    begin
        if lista^.produto=menor then
           dispose(lista);
           lista:=lista^.prox;
    end;
    inc(i);
    until (i=cont);
    readkey;
    menu;
end;

{procedure ordena;
begin
    clrscr;
    setar;
    while lista<>nil do
    begin}


procedure cria_lista;
begin
    repeat
         clrscr;
         if prim=nil then
         begin
             new(lista);
             write('entre com o produto:');
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
        { writeln('deseja incluir + elementos ?<s>ou<n>');
         readln(op);op:=upcase(op);}
    until (not confirma);
end;

procedure inserir;
var inserir:byte;
begin
    clrscr;
    if prim=nil then
    begin
       writeln('Lista nฦo criada');
       readkey;
       menu;
    end
    else
    begin
        setar;
    repeat
         clrscr;
         inserir:=0;
         while inserir=0 do
         begin
             if lista^.prox=nil then
             begin
                 aux:=lista;
                 new(lista);
                 aux^.prox:=lista;
                 write('Digite o produto: ');
                 readln(lista^.produto);
                 inserir:=1;
                 lista^.prox:=nil;
             end
             else
                 lista:=lista^.prox;
         end;
    until  (not confirma);
   end;
end;

procedure listar;
begin
    setar;
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
begin
    clrscr;
    cont:=0;
    setar;
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
         setar;
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
        { writeln;
         writeln('deseja nova pesquisa <s>ou<n>?');readln(op);
         op:=upcase(op);}
         end;
    until (not confirma);
end;

procedure exclusao;
var prod:string[30];
    flag:integer;
begin
    repeat
         clrscr;
         setar;
         if lista=nil then
         begin
             writeln('lista vazia');
             readkey;
         end
         else
         begin
             flag:=0;
             write('digite o produto p/ excluir: ');readln(prod);
             while (lista<>nil) and ( flag=0) do
             begin
                 if lista^.produto=prod then
                 begin
                     if lista=prim then
                     begin
                         prim:=lista^.prox;
                         dispose(lista);
                         flag:=1;
                         writeln('produto excluido');
                     end
                     else
                     begin
                         aux^.prox:=lista^.prox;
                         dispose(lista);
                         flag:=1;
                         writeln('produto excluido');
                         lista:=nil;
                     end;
                 end;
                 if flag=0 then
                 begin
                     aux:=lista;
                     lista:=lista^.prox;
                 end;
              end;

         end;
         {writeln('deseja <C>continuar ou <S> sair: ');
         readln(op);op:=upcase(op);}
    until (not confirma);
end;

procedure alterar;
var prod:string[30];
    flag,sair:integer;
    op2:char;
begin
    repeat
         clrscr;
         sair:=0;
         setar;
         if lista=nil then
         begin
             writeln('lista vazia');
             sair:=1;
             readkey;
         end
         else
         begin
             flag:=0;
             write('digite o produto p/ alterar: ');readln(prod);
             while (lista<>nil) and ( flag=0) do
             begin
                 if lista^.produto=prod then
                 begin
                         writeln;
                         write('Digite novo produto: ');
                         readln(lista^.produto);
                         flag:=1;
                 end
                 else
                    lista:=lista^.prox;
             end;
             if flag=0 then
             begin
                 writeln;
                 writeln('produto inexistente!');
             end;
         end;
         if sair=1 then
         begin
            op2:='S';
         end
         {else
         begin
             writeln('deseja <C>continuar ou <S> sair: ');
             readln(op2);op2:=upcase(op2);
         end;}
    until (not confirma)or(op='S');
end;

procedure menu;
begin                {principal}
    textbackground(white);
    textcolor(black);
    clrscr;
    inicializar;
    repeat
         clrscr;
         gotoxy(34,4);write('1-Criar Lista');
         gotoxy(28,6);write('2-Listar');
         gotoxy(42,6);write('3-consultar');
         gotoxy(20,8);write('4-elemento');
         gotoxy(35,8);write('5-exclusao');
         gotoxy(50,8);write('6-inserir');
         gotoxy(13,10);textcolor(red);write('7-ordenar');textcolor(black);
         gotoxy(26,10);write('8-alterar');
         gotoxy(38,10);write('9-elem..menor ');
         gotoxy(55,10);write('10-abandonar');
         gotoxy(32,25);write('digite-> <-');gotoxy(40,25);readln(opc);
         case opc of
                    1:cria_lista;
                    2:listar;
                    3:consultar;
                    4:elemento;
                    5:exclusao;
                    6:inserir;
                    8:alterar;
                    9:acha_menor;
                    10:exit;
         end;
    until (opc=9);
    readkey;
end;
begin
         menor:='zzzz';
         menu;
end.


























































