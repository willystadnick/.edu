#include <conio.h>
#include <stdio.h>

void Entrada() {
do{
   clrscr();
   Printf("Entre com o valor inteiro para a conversao:\n\n");
   scanf("%d",& decimal);
   Printf("\n\n Escolha a opcao para qual base numeric deseja converter: ");
   Printf("\n 1 - Binaria");
   Printf("\n 2 - Hexadecimal \n");
   Printf("\n 3 - Octal \");
   Printf("\n 4 - Sair \n");
   op = getch();
   switch (op) {
		case '1' : Binario; break;
		case '2' : Hexadecimal;break;
		case '3' : Octal();break;
		case '4' : Exit(0);break;
		Defaut : Entrada(); }

   Printf(\n Deseja converter outro n§ decimal <S> ou <N> ?");
   op = getch();
   op = toupper()} while (op!='N'); }


void Binaria(){


