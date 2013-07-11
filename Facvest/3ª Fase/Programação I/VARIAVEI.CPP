/* Objetivo: Fornecer numero de bytes ocupados pelas variaveis */



#include "stdio.h"


main()
   {

   /*   Declaração das variáveis locais   */


   char sexo;
   short valor1;
   int valor2;
   unsigned int valor3;
   long valor4;
   float valor5;
   double valor6;
   long double valor7;
   struct abc
      {
      char nome[31];
      char rua[21];
      int numero;
      };

   union xyz
      {
      int a;
      long b;
      float c;
      };


    /* Imprime numero de bytes ocupados pelas variaveis   */


    printf ("Tipos                   -  Bytes ocupados\n");
    printf ("---------------------------------------\n\n");
    printf ("Tipo char               : %d\n", sizeof(sexo));
    printf ("Tipo short              : %d\n", sizeof(valor1));
    printf ("Tipo int                  : %d\n", sizeof(valor2));
    printf ("Tipo unsigned int    : %d\n", sizeof(valor3));
    printf ("Tipo long               : %d\n", sizeof(valor4));
    printf ("Tipo float               : %d\n", sizeof(valor5));
    printf ("Tipo double           : %d\n", sizeof(valor6));
    printf ("Tipo long double    : %d\n", sizeof(valor7));
    printf ("Tipo struct abc       : %d\n", sizeof(struct abc));
    printf ("Tipo union xyz        : %d\n", sizeof(union xyz));
    }
//   O operador sizeof fornece o tamanho em bytes do tipo de dado, ocupado na memoria.

