program arvore_binaria;

uses crt, dos;

type
 pnodo= ^nodo;
 nodo= record
  cont: integer;
  esq, dir, pai: pnodo;
end;

procedure inicializa(var raiz: pnodo);
 begin
  raiz := nil;
 end;


procedure cria(var raiz: pnodo; x: integer);
 var
  p: pnodo;
 begin
  new(p);
  p^.cont := x;
  p^.esq := nil;
  p^.dir := nil;
  raiz := p;
 end;

procedure insere(var cont: integer; praiz: pnodo);
 var
  p: pnodo;
 begin
  if(cont < praiz^.cont) then
   if(praiz^.esq = nil) then
    begin
     new(p);
     p^.cont := cont;
     p^.esq := nil;
     p^.dir := nil;
     praiz^.esq := p;
    end
    else
    begin
     insere(cont, praiz^.esq);
    end
   else
   begin
    if(praiz^.dir = nil) then
     begin
      new(p);
      p^.cont := cont;
      p^.esq := nil;
      p^.dir := nil;
      praiz^.dir := p;
     end;
   end;
 end;

begin
end.