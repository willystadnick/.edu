{Alunos: Willy Stadnick
         Juliano Prestes
         Roger Coan
         Raymison Felix}

program lista_estatica_sequencial;

uses crt, dos;

type
 forma = record
  produto : string[20];
  lig : integer;
 end;

const
 vetor = 10;

var
 lp : array[1..vetor] of forma;
 prim, dispo : integer;

procedure cria_lista;
var
 i : integer;
begin
 if (prim = 0) then
  begin
   prim := 1;
   for i := 1 to vetor do
    begin
     writeln('Entre com o ', i, '§ produto da lista');
     readln(lp[i].produto);
     lp[i].lig := i+1;
    end;
   lp[i].lig := 0;
  end;
end;

procedure ordena_lista;
{
var
 i, j, auxlig, posmaiorprod : integer;
 maiorprod : string[20];
begin
 maiorprod := '0';

 for i := 1 to vetor do
  lp[i].lig := vetor+1;

 for j := 1 to vetor do
  begin
   for i := 1 to vetor do
    begin
     if (lp[i].produto > maiorprod) and (lp[i].lig = (vetor + 1)) then
      begin
       maiorprod := lp[i].produto;
       posmaiorprod := i;
      end;
    end;
   lp[posmaiorprod].lig := ((vetor+1) - j);
   maiorprod := '0';
  end;

 for i := 1 to vetor do
  if lp[i].lig = vetor then
   lp[i].lig := 0;

 for i := 1 to vetor do
  if lp[i].lig = 1 then
   prim := 1;
end;
}
var
 aux, ord, i: integer;
 prod: string[20];
begin
  clrscr;
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
    repeat
      write('',lp[i].produto);
      i:= lp[i].lig;
    until (i=0);
    readkey;
    menu;
end;

procedure mostra_lista;
var
 i, j : integer;
begin
 clrscr;
 for j := 1 to (vetor - 1) do
  begin
   for i := 0 to vetor do
    begin
     if (lp[i].lig = j) then
      writeln(j, '§ produto : ', lp[i].produto,' --- ', lp[i].lig);
    end;
  end;
  for i := 0 to vetor do
   begin
    if (lp[i].lig = 0) then
     writeln('Ultimo Produto :', lp[i].produto,' --- ', lp[i].lig);
   end;
  write('Pressione uma tecla para continuar...');
  readkey;
end;

procedure explicacao;
begin
 clrscr;
 writeln;
 writeln;
 writeln('O numero de elementos desta lista estatica');
 writeln('‚ definido pela atribui‡Æo de um valor … ');
 writeln('constante "vetor", declarada logo no in¡cio do');
 writeln('programa. Fica a crit‚rio do programador ou da');
 writeln('necessidade para resolu‡Æo do problema, definir');
 writeln('este valor. Neste caso atribuiremos … "vetor"');
 writeln('o valor ', vetor);
 writeln;
 writeln;
end;


begin
 clrscr;
 explicacao;
 cria_lista;
{ ordena_lista;}
 mostra_lista;
end.