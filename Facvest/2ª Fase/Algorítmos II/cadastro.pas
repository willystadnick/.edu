program atualiza_estoque;
uses crt;
type cadastro = record
 codigo,
 qtd_estoque,
 qtd_vendida : integer;
 preco_custo,
 desconto,
 preco_venda : real;
 descricao : string;
end;
var
 dados : array[1..100] of cadastro;
 num,
 i,
 local,
 cod_pesq : byte;
 resp : char;
begin
 clrscr;
{vou ler alguns cadastros pra poder alterar depois}
 write('Quantos produtos deseja cadastrar ? ');
 readln(num);
 for i := 1 to num do
 begin
  write('Digite o c¢digo do Produto: ');
  readln(dados[i].codigo);
  write('Digite a descri‡Æo do Produto: ');
  readln(dados[i].descricao);
  write('Digite a quantidade em estoque do Produto: ');
  readln(dados[i].qtd_estoque);
  dados[i].qtd_vendida := 0;
  write('Digite o pre‡o de custo do Produto: ');
  readln(dados[i].preco_custo);
  write('Digite o desconto do Produto: ');
  readln(dados[i].desconto);
  dados[i].preco_venda := dados[i].preco_custo * 1.3 * (dados[i].desconto / 100);
  writeln;
 end;
{agora vou modificar algum cadastro}
 resp := 's';
 repeat
  write('Digite o c¢digo do cadastro que deseja alterar: ');
  readln(cod_pesq);
  local := 0;
{pesquisa pelo c¢digo}
  for i := 1 to 100 {m ximo do vetor} do
   if (dados[i].codigo = cod_pesq)
    then
    begin
     local := i;
     i := 100;
    end;
  if (local = 0)
   then begin
    writeln;
    writeln('C¢digo Inexistente, seu burrro');
    writeln; end
   else begin
    writeln;
    write('Digite uma nova descri‡Æo para o Produto de C¢digo ' , cod_pesq, ': ');
    readln(dados[local].descricao);
    write('Digite uma nova quantidade em estoque para o Produto de C¢digo ' , cod_pesq, ': ');
    readln(dados[local].qtd_estoque);
    write('Digite uma nova quantidade vendida para o Produto de C¢digo ' , cod_pesq, ': ');
    readln(dados[local].qtd_vendida);
    write('Digite um novo pre‡o de custo para o Produto de C¢digo ' , cod_pesq, ': ');
    readln(dados[local].preco_custo);
    write('Digite um novo desconto para o Produto de C¢digo ' , cod_pesq, ': ');
    readln(dados[local].desconto);
    dados[local].preco_venda := dados[local].preco_custo * 1.3 * (dados[local].desconto / 100);
    writeln('Dados alterados com sucesso...');
{apresenta o cadastro alterado}
    writeln('C¢digo             : ', dados[local].codigo);
    writeln('Descri‡Æo          : ', dados[local].descricao);
    writeln('Quantidade Estoque : ', dados[local].qtd_estoque);
    writeln('Quantidade Vendida : ', dados[local].qtd_vendida);
    writeln('Pre‡o de Custo     : ', dados[local].preco_custo);
    writeln('Desconto           : ', dados[local].desconto);
    writeln('Pre‡o de Venda     : ', dados[local].preco_venda);
   end;
  write('Deseja alterar mais algum cadastro, seu monte de mierrrda ? (s/n) ');
  readln(resp);
 until(resp = 'n');
  write('Pressione qualquer tecla para sair');
  readln;
end.