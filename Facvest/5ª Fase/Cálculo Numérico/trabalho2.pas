//FACULDADES INTEGRADAS UNIVEST
//FACIC - FACULDADE DE CIÊNCIA DA COMPUTAÇÃO
//DISCIPLINA: CALCULO NUMÉRICO
//PROFESSOR: SILVIO
//ACADÊMICOS: 	WILLY STADNICK		5ª FASE
//			ROGER COAN		5ª FASE
//TRABALHO DE PONTO FLUTUANTE

Program trabalho02;
 const
//  menor_neg = -999.9;
//  maior_neg = -0.0001;
  menor_pos = 0.0001;
  maior_pos = 999.9;
 var
  nro : real;
 Begin
  writeln('Entre com o número: ');
  readln(nro);
//  if(nro < menor_neg) then
//   writeln('Underflow Negativo');
//  if(nro > maior_neg) then
//   writeln('Overflow Negativo');
  if(nro < menor_pos) then
   writeln('Underflow Positivo dentro do FP(10,4,3)');
  if(nro > maior_pos) then
   writeln('Overflow Positivo dentro do FP(10,4,3)');
  if((nro < maior_pos) and (nro > menor_pos)) then
   writeln('Número possível de representar dentro do FP(10,4,3)');
 End.
