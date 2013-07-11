#define COM1 0x3f8
#define BITRATE 4800
#define FORMATO 0x3
#include<conio.h>
#include<stdio.h>
#include <dos.h>
#include <process.h>

int mouselin=0,mousecol=0;
union REGS regs;
int flag=0;
int flag2=0;

void inicializa_mouse(void){
   regs.x.ax=6;
   int86(0x33,&regs,&regs); }

void inicializa_mouse2(void){
   inicializa_mouse();
   regs.x.ax=0;                 // Funcao para inicializar o cursor
   int86(0x33,&regs,&regs);     // Chamada de interrupcao
   regs.x.ax=1;                 // Funcao para apresentar o cursor
   int86(0x33,&regs,&regs);     // Chamada de interrupcao
   regs.x.ax=6;                 // Funcao para verificar click
   int86(0x33,&regs,&regs);     // Chamada de interrupcao
}
void mostra_posicao(void)
{
   clrscr();
   inicializa_mouse();
   for(mouselin=0;mouselin<24;mouselin++)
   {
      for(mousecol=0;mousecol<80;mousecol++)
      {
	 ((regs.x.cx))=(mousecol*8);
	 ((regs.x.dx))=(mouselin*8);
	 regs.x.ax=4; // 4 - fun‡Æo para mostrar 0 curso do mouse na tela
	 int86(0x33,&regs,&regs);
	 delay(4);
      };
   };
};


void pega_posicao(void)
{
   regs.x.ax=3;                 // Funcao para nÆo verificar click
//   regs.x.bx=0;
   int86(0x33,&regs,&regs);     // Chamada de interrupcao
   mousecol=((regs.x.cx));//Retorna a coluna atual do mouse
   mouselin=((regs.x.dx));//Retorna a linha  atual do mouse
   if (regs.x.bx)
   {
      mostra_posicao();
   }
}

void mouse(){
   pega_posicao();
   gotoxy(01,01);
   cprintf("coluna=%d ",mousecol);
   cprintf("linha=%d ",mouselin);
   delay(20);
}


void main(void){
	char tx,rx;			 /*declaracao*/
	int estado,enviado=0;		/*IN¡CIO da configuracao da porta serial*/
	clrscr();
	outportb(COM1+3,0x80);             /*activa o bit mais significativo = DLAB */
	outportb(COM1,0x30);               /*byte menos significativo do ritmo de transmissao
				 (tab No.7.3 apendice f, Joe Campbell)*/
	outportb(COM1+1,0x00);             /*byte mais significativo do ritmo de transmissao
				(tab No.7.3 apendice f, Joe Campbell)*/
	outportb(COM1+3,FORMATO);            /*seleccionar a paridade,o No. de stop bits
				o No. de bits por caracter e DLAB=0*/
			/*FIM da configuracao da porta serial*/
	inicializa_mouse2();
do{
	if (kbhit()||!enviado){
	   if(enviado){
			mouse();
			if(flag==0){
			  mousecol = (mousecol /8);
			  tx=mousecol;
			  flag=1;  }
			else{
			  mouselin = (mouselin /8);
			  tx=mouselin;
			  flag=0;}

			enviado=0;
	      }
	   estado=inportb(COM1+5);        /*verifica estado de linha =0xf2d,ver
				     figura 7.6= REL  JOE CAMPBELL,APENDICE F*/
	   if  (estado&64)		/*verifica se pode enviar byte para o outro PC,
				analisa  5 bit do Reg. Estado Linha */
	      {
		outportb(COM1,tx);		 /*envia caracter*/
		enviado=1;
	      }
	}

	 estado=inportb(COM1+5);        /*verifica estado de linha =0xf2d,ver					figura 7.6= REL  JOE CAMPBELL,APENDICE F*/
	if  (estado&1)		   /*verifica se chegou byte do outro PC,
				analisa bit menos significativo REL	*/
	   {
	      rx=inportb(COM1);
	      if (flag2==0){
		 inicializa_mouse();
		 regs.x.ax=0;                 // Funcao para inicializar o cursor
		 regs.x.ax=1;
		 int86(0x33,&regs,&regs);
		 regs.x.ax=4;// Chamada de interrupcao
		 ((regs.x.cx))=(rx*8);//Retorna a coluna atual do mouse
		 int86(0x33,&regs,&regs);
		 pega_posicao();
		 regs.x.ax=4; // 4 - fun‡Æo para mostrar 0 curso do mouse na tela
		 int86(0x33,&regs,&regs);
		 flag2 = 1;}
	      else{
		 inicializa_mouse();
		 regs.x.ax=0;                 // Funcao para inicializar o cursor
		 regs.x.ax=1;
		 int86(0x33,&regs,&regs);
		 regs.x.ax=4;// Chamada de interrupcao
		 ((regs.x.dx))=(rx*8);//Retorna a linha atual do mouse
		 int86(0x33,&regs,&regs);
		 pega_posicao();
		 regs.x.ax=4; // 4 - fun‡Æo para mostrar 0 curso do mouse na tela
		 int86(0x33,&regs,&regs);
		 flag2 = 0;}

	      delay(500);
	   }
   }while (tx!='*');
}


