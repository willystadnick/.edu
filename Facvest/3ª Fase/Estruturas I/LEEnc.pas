program lista_estatica_encadeada_09_set_03;

uses crt;

const
 max = 15;

type
  forma = record
            produto:string[20];
            lig: integer;
          end;
var
  lp: array[1..max] of forma; {lista de produtos}
  i, prim: integer;
  dispo: array[1..max] of integer;
  opcao: integer;

procedure menu; forward;

{procedure aglutinada aqui com permiss∆o do colega Juliano Prestes}
PROCEDURE CENTER(TEXTO:STRING;Y:INTEGER);

BEGIN
   GOTOXY(40-(LENGTH(TEXTO) DIV 2),Y);
   WRITE(TEXTO);
END;
{fim do ripp}

procedure linha(x: byte);
var
  i: byte;
begin
  gotoxy(1, x);
  for i:= 1 to 80 do
    write(#205);
end;

procedure ordenar;
{ -modo q o professor comeáou a implementar-
para ordenar, primeiramente, e necessario:
* saber qtos elementos possui a lista;
* guardar a posicao do elemento anterior durante o andamento da varredura

var
 ant, ant: forma;
 indant: integer;
begin
 i := prim;
 while(lp[i].lig <> 0)
  begin
   ant.produto := lp[i].produto;
   ant.lig := lp[i].lig;
   indant := i;
   if(lp[i].produto > lp[ lp[i].lig ].produto)
    begin
     lp[ lpi[i].lig ].lig := i;
     lp[i].lig := aux.lig;
    end;
   i := lp[i].lig;
  end;
end;
}

{ -modo do arquivo original-
var
  i,j,k:integer;
  auxlig:integer;
  auxproduto:integer;
begin
   i:=1;
   prim:=1;
   while (lp[i].lig<>0) do
     begin
       if (lp[i].produto > lp[i+1].produto) then
         begin
           if (prim = i) then
              prim := i+1;
           auxlig:=lp[i+1].lig;
           lp[i+1].lig:=i;
           lp[i].lig:=auxlig;
           for j:=1 to 10 do
             begin
               if (lp[j].lig = i) then
                 begin
                   lp[j].lig:=i+1;
                 end;
             end;
         end;
         i:=i+1;
         for k:=1 to max-1 do
           begin
             i:=prim;
             while (lp[i].lig<>0) do
               begin
                if (lp[i].produto > lp[lp[i].lig].produto) then
                  begin
                    if (prim = 1) then
                      prim := lp[i].lig;
                      auxlig:= lp[lp[i].lig].lig;
                      lp[lp[i].lig].lig:=auxlig;
                  end;
                  i:=lp[i].lig;
               end;
            end;
     end;
end;
}
{ -eu fiz errado-
var
 i, j, auxlig, posmaiorprod : integer;
 maiorprod : string[20];
begin
 maiorprod := '0';

 for i := 1 to max do
  lp[i].lig := max+1;

 for j := 1 to max do
  begin
   for i := 1 to max do
    begin
     if (lp[i].produto > maiorprod) and (lp[i].lig = (max + 1)) then
      begin
       maiorprod := lp[i].produto;
       posmaiorprod := i;
      end;
    end;
   lp[posmaiorprod].lig := ((max+1) - j);
   maiorprod := '0';
  end;

 for i := 1 to max do
  if lp[i].lig = max then
   lp[i].lig := 0;

 for i := 1 to max do
  if lp[i].lig = 1 then
   prim := i;

 j := 1;
 for i := 1 to max do
  if lp[i].lig = max+1 then
    dispo[i] := 1
   else
    dispo[i] := 0
end;
}
var
 aux, ord, i: integer;
 prod: string[20];
begin
  ord:= 0;

  while (prim <> 0) do
    begin
      aux := prim;
      i:= aux;
      prod:= lp[aux].produto;

      while LP[aux].lig <> 0 do
        begin
          aux := lp[aux].lig;
          if lp[aux].produto > prod then
            begin
              i:= aux;
              prod := lp[aux].produto;
            end;
        end;

      aux:= prim;
      if (lp[aux].lig <> 0) and (i <> prim) then
        begin

          while lp[aux].lig <> i do
            aux := lp[aux].lig;
            lp[aux].lig := lp[i].lig;
        end
      else
        prim := lp[aux].lig;
        lp[i].lig := ord;
        ord:= i;
    end;
    prim := ord;
    i:= prim;
{   repeat
     write(lp[i].produto);
     i:= lp[i].lig;
    until (i=0);
}   menu;
end;

procedure criar;
var
  i: integer;
  resp : char;
begin
  clrscr;
  linha(1);
  linha(3);
  center('CRIAR', 2);
  i:=1;
  if (prim = 0) then
    begin
      repeat {for i:= 1 to max do}
          gotoxy(3, i+4); write('Digite o nome do produto: ');
          readln(lp[i].produto);
          lp[i].lig:= i+1;
          dispo[i]:= 0;
          i:=i+1;
          clreol; center('Deseja inserir novo produto? <S/N> ', 22);
          clreol; readln(resp);
          resp := upcase(resp);
      until(resp = 'N');
        prim:= 1;
        lp[max].lig:= 0;
    end;
    center('Criaá∆o Conclu°da com Sucesso', 24);
    delay(1000);
    ordenar;
    menu;
end;

procedure inserir;
var
  i, inseriu: integer;
  resp: char;
begin
  clrscr;
  linha(1);
  linha(3);
  center('INSERIR', 2);
  i:= prim;
  resp:= 'S';
  inseriu := 0;
  for i:= 1 to max do
    begin
      if (dispo[i] = 1) and (resp = 'S') then
        begin
          gotoxy(3, i+4); write('Digite o nome do produto: ');
          readln(lp[i].produto);
          dispo[i]:= 0;
          center('Deseja inserir outro produto? <S/N> ', 24);
          clreol;
          readln(resp);
          resp := upcase(resp);
          inseriu := 1;
        end;
    end;
  if (inseriu = 0) then
    begin
      center('Sem espaáo para inserir novo produto !', 22);
      delay(1000);
    end;
    center('Pressione qualquer tecla para retornar ao menu principal', 24);
    readkey;
    menu;
end;

procedure alterar;
var
  i, altera: integer;
  nome_altera, novo_nome: string[30];
begin
  clrscr;
  linha(1); linha(3);
  center('ALTERAR', 2);
  altera:= 0;
  gotoxy(2,5); write('Digite o nome do produto a ser alterado: ');
  readln(nome_altera);
  for i:= 1 to max do
    begin
      if (nome_altera = lp[i].produto) then
        begin
          write('Digite o nome do novo produto: ');
          readln(novo_nome);
          lp[i].produto := novo_nome;
          lp[i].lig:= i+1;
          altera:= 1;
        end;
    end;
  if (altera = 0) then
    begin
      center('Produto inexistente !', 22);
      center('Pressione qualquer tecla para retornar ao menu principal', 24);
    end;
    center('Pressione qualquer tecla para retornar ao menu principal', 24);
    readkey;
    menu;
end;

procedure listar;
var
 i, j : integer;
begin
  clrscr;
  linha(1);
  linha(3);
  center('LISTAR', 2);
  i := prim;
  j := 1;
  while (i <> 0) do
   begin
    gotoxy(2,j+5); write('Produto: ', lp[i].produto);
    gotoxy(65,j+5); write('Lig: ', i);
    i := lp[i].lig;
    inc(j);
   end;
  center('Pressione qualquer tecla para voltar ao menu principal', 24);
  readkey;
  menu;
end;

procedure consultar;
var
  i: integer;
begin
  clrscr;
  linha(1);
  linha(3);
  center('CONSULTAR', 2);
  i := 1;
  repeat
   if (dispo[i] = 0) then
    begin
     gotoxy(11, i+4); write('...........................................................');
     gotoxy(2, i+4); write('Produto: ',lp[i].produto);
     if (lp[i].lig = prim) then
      gotoxy(65, i+4); write('Prim');
     gotoxy(70, i+4); write('Lig:',lp[i].lig);
    end;
   inc(i);
  until(lp[i].lig = 0);
  center('Pressione qualquer tecla para voltar ao menu principal', 24);
  readkey;
  menu;
end;

procedure troca_dispo;
begin
 if (dispo[i] = 0) then
  begin
   dispo[i] := i;
   lp[i].lig := 0;
  end
  else
  begin
   if (dispo[i] > i) then
    begin
     lp[i].lig := dispo[i];
     dispo[i] := i;
    end;
  end;
end;

procedure excluir;
var
  prod: string[20];
  ind, i, achou: integer;
  aux: forma;
begin
  clrscr;
  linha(1); linha(3);
  center('EXCLUIR', 2);
  gotoxy(3,5); write('Digite o nome do produto que deseja excluir: ');
  readln(prod);
  achou := 0;
  i := 1;
  while i <> 0 do
    begin
      if (prod = lp[i].produto) then
        begin
         achou := 1;
         if (i = prim) then
          begin
           prim := lp[i].lig;
           troca_dispo;
           i := 0;
          end
          else
          begin
           lp[ind].lig := lp[i].lig;
           troca_dispo;
           i := 0;
          end;
        end
        else
        begin
         ind := 1;
         i := lp[i].lig;
        end;
    end;
  if (achou = 0) then
    begin
      center('Produto inexistente !', 22);
      center('Pressione qualquer tecla para retornar ao menu principal', 24);
    end;
  center('Pressione qualquer tecla para retornar ao menu principal', 24);
  readkey;
  menu;
end;

procedure menu;
  begin
    clrscr;
    linha(1);
    linha(2);
    center('LISTA ESTµTICA SEQUENCIAL', 4);
    linha(6);
    linha(7);
    gotoxy(25,9); write('1 ... Criar');
    gotoxy(25,11); write('2 ... Inserir');
    gotoxy(25,13); write('3 ... Alterar');
    gotoxy(25,15); write('4 ... Consultar');
    gotoxy(25,17); write('5 ... Listar');
    gotoxy(25,19); write('6 ... Excluir');
    gotoxy(25,21); write('7 ... Finaliza Programa');
    linha(24);
    center('Digite sua Opá∆o: ', 23);

    readln(opcao);
    case (opcao) of
      1: criar;
      2: inserir;
      3: alterar;
      4: consultar;
      5: listar;
      6: excluir;
      7: exit;
    end;
end;

begin {programa principal}
  prim:=0;
  for i := 1 to max do
   dispo[i] := 1;
  menu;
end.