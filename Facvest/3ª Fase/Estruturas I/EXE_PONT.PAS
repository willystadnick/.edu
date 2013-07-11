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
             readln(lista^.produto);
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
procedure ordena;
var
begin

procedure consultar;
var
 prod:string[30];
 flag:integer;
 op:char;
begin
   repeat
      clrscr;
      writeln('digite o produto');
      readln(prod);
      lista:=prim;
      if lista =nil then
         begin
           writeln('lista vazia');
           readkey;
           op:=('N');
         end
      else
        begin
         while ((lista <>nil )and(flag=0))do
          begin
            if lista^.produto=prod then
              begin
                 writeln('o produto :',lista^.produto);
                 flag:=1;
                 lista:=lista^.prox;
              end;
              if flag=0 then
                begin
                  writeln('produto nao consta na lista');
                  writeln;
                  writeln('deseja nova pesquisa');
                  readln(op);
                  op:=upcase(op);
              end;
      end;
      end;
      until op='N';

end;




begin                {princpal}
    textbackground(blue);
    clrscr;
    inicializar;
    cria_lista;
    listar;
    consultar;
    readkey;
end.


























































