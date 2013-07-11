program viagem;
uses crt, dos;
var
 tempo, velocidade, distancia, qtd_litros : real;
begin
 clrscr;
 writeln(' - - Programa de Viagem - - ');
 writeln('');
 write('Digite a Velocidade M‚dia da viagem (em Km/H) : ');
 readln(velocidade);
 write('Digite o Tempo da viagem (em Horas)           : ');
 readln(tempo);
 distancia := tempo * velocidade;
 qtd_litros := distancia / 12;
 writeln('');
 writeln('Velocidade M‚dia     : ', velocidade:1:1, ' Km/h');
 writeln('Tempo                : ', tempo:1:1, ' Horas');
 writeln('Distƒncia            : ', distancia:1:1, ' Km');
 writeln('Quantidade de Litros : ', qtd_litros:1:1, ' Litros');
 writeln('');
 write('Pressione qualquer tecla para sair...');
 readkey;
end.