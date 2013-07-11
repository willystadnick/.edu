program sistema_de_controle_operacional;
uses dos, crt;
type
 campos_processo = record
 descricao: string[30];
 n_processo: integer;
 tempo: integer;
 recursos: array[1..4,1..2] of integer; {recursos e seu tempos}
end;

pfila =^fila;
fila = record
 recurso: string[20];
 tempo_rec: integer;
 n_processo: integer;
 lig: pfila;
end;

var
cp: campos_processo;
fila_ram, fila_input, fila_output, fila_printer, comeco, fim: pfila;
dia, mes, ano, diasem: word;

procedure menu; forward;

procedure inicializar;
begin
 fila_ram := nil;
 fila_input := nil;
 fila_output := nil;
 fila_printer := nil;
 comeco := nil;
 fim := nil;
end;

function contagem(tinicio:byte): byte;
var
 t:byte;
begin
 for t:=tinicio downto 0 do
  begin
   gotoxy(10,10); writeln(t);
   delay(1000);
   gotoxy(10,10); writeln(' ');
  end;
end;

procedure tela;
var
i: integer;
begin
 for i:=1 to 78 do
  begin
   gotoxy(i+1,1); writeln('í');
   gotoxy(i+1,3); writeln('í');
   gotoxy(i+1,22); writeln('í');
   gotoxy(i+1,24); writeln('í');
  end;
 for i:=1 to 22 do
  begin
   gotoxy(1,i+1); writeln('º');
   gotoxy(79,i+1); writeln('º');
  end;
 gotoxy(1,1); writeln('é');
 gotoxy(79,1); writeln('»');
 gotoxy(1,24); writeln('è');
 gotoxy(79,24); writeln('¼');
 gotoxy(1,3); writeln('ì');
 gotoxy(79,3); writeln('¹');
 gotoxy(1,22); writeln('ì');
 gotoxy(79,22); writeln('¹');
end;

function tela_processo(cm:byte):byte;
var
 i,l :integer;
begin
 for i:=1 to 78 do
  begin
   gotoxy(i+1,1); writeln('í');
   gotoxy(i+1,3); writeln('í');
   gotoxy(i+1,22); writeln('í');
   gotoxy(i+1,24); writeln('í');
end;
for i:=1 to 22 do
 begin
  gotoxy(1,i+1); writeln('º');
  gotoxy(79,i+1); writeln('º');
 end;
gotoxy(1,1); writeln('é');
gotoxy(79,1); writeln('»');
gotoxy(1,24); writeln('è');
gotoxy(79,24); writeln('¼');
gotoxy(1,3); writeln('ì');
gotoxy(79,3); writeln('¹');
gotoxy(1,22); writeln('ì');
gotoxy(79,22); writeln('¹');
gotoxy(3,5);
l:=5;
write('processo -> ');
for i := 1 to 4 do
 begin
  gotoxy(20,l);
  if cp.recursos[1,i]=1 then
   write('recurso -> ram');
  if cp.recursos[1,i]=2 then
   write('recurso -> input');
  if cp.recursos[1,i]=3 then
   write('recurso -> output');
  if cp.recursos[1,i]=4 then
   write('recurso -> impressora');
  inc(l);
 end;
end;

procedure center(texto: string; y: integer);
begin
 gotoxy(40-(length(texto) div 2),y); write(texto);
end;

function zero(w: word): string;
var
 m,s: string;
begin
 str(w:0,s);
 if length(s) = 1 then
  s := '0' + s;
 zero := s;
 str(w:0,m);
 if length(m) = 1 then
  m:= '0' + m;
 zero := m;
end;

function time(x,y :byte):string;
var
 h, m, s, hund: word;
begin
 gettime(h, m, s, hund);
 gotoxy(x,y); writeln(zero(h),':',zero(m));
end;

procedure cadastra_processo;
var
 total_recurso_cadastrado, cm, lm: byte;
 op :char;
begin
 clrscr;
 tela;
 cm := 1; lm := 0;
 total_recurso_cadastrado := 0;
 cp.n_processo := cp.n_processo + 1;
 while (op <> 'n') and (total_recurso_cadastrado < 4 )do
  begin
   if total_recurso_cadastrado=0 then
    begin
     inc(lm);
     gotoxy(20,10); write('numero processo: ');
     writeln(cp.n_processo);
     gotoxy(20,11); write('descricao: '); readln(cp.descricao);
     gotoxy(20,12); write('escolha o recurso:');
     gotoxy(20,13); writeln('1 - ram');
     gotoxy(20,14); writeln('2 - input');
     gotoxy(20,15); writeln('3 - output');
     gotoxy(20,16); writeln('4 - impressora');
     gotoxy(20,17); write('--> ');
     readln(cp.recursos[cm,lm]);
     gotoxy(20,18); write('tempo do processo: ');
     cm := 2;
     readln(cp.recursos[cm,lm]);
     cm := 1;
     if total_recurso_cadastrado < 4 then
      begin
       center('deseja cadastrar mais recursos neste processo ? <s> <n>',19);
       readln(op);
       op := upcase(op);
       inc(cm); inc(lm); inc(total_recurso_cadastrado);
      end;
    end
   else
    begin
     clrscr;
     tela;
     gotoxy(20,10); write('numero processo: ');
     writeln(cp.n_processo);
     gotoxy(20,11); write('descricao: ');
     writeln(cp.descricao);
     gotoxy(20,12); write('escolha o recurso:');
     gotoxy(20,13); writeln('1 - ram');
     gotoxy(20,14); writeln('2 - input');
     gotoxy(20,15); writeln('3 - output');
     gotoxy(20,16); writeln('4 - impressora');
     gotoxy(20,17); write('--> ');
     readln(cp.recursos[cm,lm]);
     gotoxy(20,18); write('tempo do processo: ');
     readln(cp.recursos[cm,lm]);
     if total_recurso_cadastrado < 4 then
      begin
       center('deseja cadastrar mais recursos neste processo ? <s> <n>',19);
       readln(op);
       op := upcase(op);
       inc(cm); inc(lm); inc(total_recurso_cadastrado);
      end;
    end;
  end;
 menu;
end;

procedure listar_processos;
var
 i, cm, lm: byte;
begin
 cm := 1; lm := 1;
 for i:=1 to cp.n_processo do
  begin
   clrscr;
   tela_processo(cm);
   gotoxy(15,5); writeln(cp.n_processo);
   inc(cm); inc(lm);
   readkey;
  end;
end;

procedure menu;
var
 op: byte;
begin
 getdate(ano, mes, dia, diasem);
 clrscr;
 tela;
 center('sistema de controle',2);
 gotoxy(3,23); writeln(dia, '/', mes, '/', ano);
 time(74,23);
 gotoxy(30,10); writeln('1 - criar processo');
 gotoxy(30,11); writeln('2 - listar');
 gotoxy(30,12); writeln('3 - sair');
 center('selecione a opcao desejada',23);
 gotoxy(33,21); write('--- > ');
 gotoxy(42,21); write(' < ---');
 gotoxy(40,21); readln(op);
 case op of
  1: cadastra_processo;
  2: listar_processos;
  end;
 end;

begin
 menu;
end.