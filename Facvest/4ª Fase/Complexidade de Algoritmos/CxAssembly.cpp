//Modelo de programa em C para o desenvolvimento de uma
//expressao em assembly in-line e avaliacao de desempenho

#include <conio.h>
#include <stdio.h>
#include <dos.h>
#include <time.h>
#define loop 100000

main()
{
	unsigned int a,b,c,d,e,f;			//variaveis de entrada
	int x; 								//variavel de saida
	int t1;								//variavel temporaria
	long i;								//contador de loop
	clock_t start, end;   //intantes iniciais e finais do loop

	clrscr();
	/********** Entradas de dados ************/
	/*
	printf("a =? ");  	scanf("%d",&a);
	printf("b =? ");    scanf("%d",&b);
	printf("c =? ");    scanf("%d",&c);
	printf("d =? ");
		 scanf("%d",&d);
	printf("e =? ");    scanf("%d",&e);
	printf("f =? ");    scanf("%d",&f);
	*/
	a=2; b=2; c=2; d=2; e=2; f=2;     //usa valores fixos de entrada

	/********** SOLUCAO EM ASM ************/
	printf("\nSolucao em ASM-1");
	start = clock();                  //obtem instante inicial
	for (i=0;i<=loop;i++)
	asm {
			//Desenvolver solucao em assembler
			//exemplo:
			mov ax,cx		//ax <- a
			add ax,dx   //ax <- ax + b = a + b
			mov x,ax    // x <- ax = a + b
	}
	end   = clock();                  //obtem instante final
	printf("\nx = %d",x);
	printf("\nForam gastos %f segundos", (end - start) / CLK_TCK);

	/********** SOLUCAO EM C ************/
	printf("\nSolucao em C");
	start = clock();  								//obtem instante inicial
	for (i=0;i<=loop;i++)
			//Desenvolver solucao em C
			x = a + b;
	end = clock();    								//obtem instante final
	printf("\nx = %d",x);
	printf("\nForam gastos %f segundos", (end - start) / CLK_TCK);

	getch();

	return(0);
}





