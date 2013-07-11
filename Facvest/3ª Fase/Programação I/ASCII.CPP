//Tabela ASCII

#include<conio.h>
#include<stdio.h>
#include<stdlib.h>
#include<process.h>
#include<dos.h>




void tabela1()
{
 clrscr();
 int i=0;
 int n=0;
    gotoxy(1,1); printf("|");
    gotoxy(4,1); printf("CHARC");
    gotoxy(10,1); printf("-");
    gotoxy(12,1); printf("HEXAD");
    gotoxy(18,1); printf("-");
    gotoxy(20,1); printf("DECIM");
    gotoxy(27,1); printf("|");


 do{
    gotoxy(5,2+n); printf("%c",i);
    gotoxy(13,2+n); printf("%x",i);
    gotoxy(21,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<24);
}

void tabela2()
{
 int i=24;
 int n=0;
    gotoxy(30,1); printf("CHARC");
    gotoxy(36,1); printf("-");
    gotoxy(38,1); printf("HEXAD");
    gotoxy(44,1); printf("-");
    gotoxy(46,1); printf("DECIM");
    gotoxy(53,1); printf("|");
 do{
    gotoxy(31,2+n); printf("%c",i);
    gotoxy(39,2+n); printf("%x",i);
    gotoxy(47,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<48);
}

void tabela3()
{
 int i=48;
 int n=0;
    gotoxy(56,1); printf("CHARC");
    gotoxy(62,1); printf("-");
    gotoxy(64,1); printf("HEXAD");
    gotoxy(70,1); printf("-");
    gotoxy(72,1); printf("DECIM");
    gotoxy(79,1); printf("|");
 do{
    gotoxy(57,2+n); printf("%c",i);
    gotoxy(65,2+n); printf("%x",i);
    gotoxy(73,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<72);
}

void tabela4()
{
 clrscr();
 int i=72;
 int n=0;
    gotoxy(1,1); printf("|");
    gotoxy(4,1); printf("CHARC");
    gotoxy(10,1); printf("-");
    gotoxy(12,1); printf("HEXAD");
    gotoxy(18,1); printf("-");
    gotoxy(20,1); printf("DECIM");
    gotoxy(27,1); printf("|");


 do{
    gotoxy(5,2+n); printf("%c",i);
    gotoxy(13,2+n); printf("%x",i);
    gotoxy(21,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<96);
}

void tabela5()
{
 int i=96;
 int n=0;
    gotoxy(30,1); printf("CHARC");
    gotoxy(36,1); printf("-");
    gotoxy(38,1); printf("HEXAD");
    gotoxy(44,1); printf("-");
    gotoxy(46,1); printf("DECIM");
    gotoxy(53,1); printf("|");
 do{
    gotoxy(31,2+n); printf("%c",i);
    gotoxy(39,2+n); printf("%x",i);
    gotoxy(47,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<120);
}

void tabela6()
{
 int i=120;
 int n=0;
    gotoxy(56,1); printf("CHARC");
    gotoxy(62,1); printf("-");
    gotoxy(64,1); printf("HEXAD");
    gotoxy(70,1); printf("-");
    gotoxy(72,1); printf("DECIM");
    gotoxy(79,1); printf("|");
 do{
    gotoxy(57,2+n); printf("%c",i);
    gotoxy(65,2+n); printf("%x",i);
    gotoxy(73,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<144);
}

void tabela7()
{
 clrscr();
 int i=144;
 int n=0;
    gotoxy(1,1); printf("|");
    gotoxy(4,1); printf("CHARC");
    gotoxy(10,1); printf("-");
    gotoxy(12,1); printf("HEXAD");
    gotoxy(18,1); printf("-");
    gotoxy(20,1); printf("DECIM");
    gotoxy(27,1); printf("|");


 do{
    gotoxy(5,2+n); printf("%c",i);
    gotoxy(13,2+n); printf("%x",i);
    gotoxy(21,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<168);
}

void tabela8()
{
 int i=168;
 int n=0;
    gotoxy(30,1); printf("CHARC");
    gotoxy(36,1); printf("-");
    gotoxy(38,1); printf("HEXAD");
    gotoxy(44,1); printf("-");
    gotoxy(46,1); printf("DECIM");
    gotoxy(53,1); printf("|");
 do{
    gotoxy(31,2+n); printf("%c",i);
    gotoxy(39,2+n); printf("%x",i);
    gotoxy(47,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<192);
}

void tabela9()
{
 int i=192;
 int n=0;
    gotoxy(56,1); printf("CHARC");
    gotoxy(62,1); printf("-");
    gotoxy(64,1); printf("HEXAD");
    gotoxy(70,1); printf("-");
    gotoxy(72,1); printf("DECIM");
    gotoxy(79,1); printf("|");
 do{
    gotoxy(57,2+n); printf("%c",i);
    gotoxy(65,2+n); printf("%x",i);
    gotoxy(73,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<216);
}

void tabela10()
{
 clrscr();
 int i=216;
 int n=0;
    gotoxy(1,1); printf("|");
    gotoxy(4,1); printf("CHARC");
    gotoxy(10,1); printf("-");
    gotoxy(12,1); printf("HEXAD");
    gotoxy(18,1); printf("-");
    gotoxy(20,1); printf("DECIM");
    gotoxy(27,1); printf("|");


 do{
    gotoxy(5,2+n); printf("%c",i);
    gotoxy(13,2+n); printf("%x",i);
    gotoxy(21,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<240);
}

void tabela11()
{
 int i=240;
 int n=0;
    gotoxy(30,1); printf("CHARC");
    gotoxy(36,1); printf("-");
    gotoxy(38,1); printf("HEXAD");
    gotoxy(44,1); printf("-");
    gotoxy(46,1); printf("DECIM");
    gotoxy(53,1); printf("|");
 do{
    gotoxy(31,2+n); printf("%c",i);
    gotoxy(39,2+n); printf("%x",i);
    gotoxy(47,2+n); printf("%d",i);
    i++;
    n++;
    }while(i<256);
}


void main()
{
 clrscr();
 gotoxy(30,10);
 printf("TABELA ASCII");
 getch();
 tabela1();
 tabela2();
 tabela3();
 getch();
 tabela4();
 tabela5();
 tabela6();
 getch();
 tabela7();
 tabela8();
 tabela9();
 getch();
 tabela10();
 tabela11();
 getch();
}