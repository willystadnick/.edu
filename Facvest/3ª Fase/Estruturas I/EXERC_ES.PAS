{Exerc¡cio: Construa uma lista est tica sequencial de
 produtos de inform tica onde:
  *criar lista
  *inserir na lista
  *alterar na lista
  *consultar na lista
  *excluir na lista                                 }

type
 forma = record
  produto : string[20];
  lig : integer;
 end;

var
 lp : array[1..10] of forma;
 prim : integer;
 dispo : array[1.10] of integer;

procedure cria_lista;
 var

 begin
  if prim = 0 then
   begin
    for i := 1 to 10 do
     begin
      writeln('Entre com o Produto na lista: ');
      readln(lp[i].produto);
      lp[i].lig := i+1;
      dispo[1] := 0;
     end;
    prim := 1;
    lp[10].lig := 0;
   end;