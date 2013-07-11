//Exemplo de um simples aplicativo que recebe o valor de 3 notas para realizar o c�lculo da m�dia
//Estrutura de Repeticao utilizada - "WHILE"

import javax.swing.JOptionPane; // importa��o da Classe JOptionPane que est� no pacote javax.swing

public class ExemploWhile2 {
   public static void main( String args[] ) 
   {
      int soma,			     // vari�vel que conter� a soma das notas
          Cont_Notas,		 // vari�vel para contagem das notas
          intNota,			 // vari�vel do tipo inteiro que armazenar� o valor da nota
          media;			 // vari�vel que conter� o valor da media das notas
      String strNota;		 // vari�vel do tipo String que receber� o valor da nota inserida pelo usu�rio
   
      // inicializa��o de vari�veis
      soma = 0;				 // limpa a vari�vel soma
      Cont_Notas = 1;		 // inicializa o contador de notas
   
      // Processamento do la�o while
      while ( Cont_Notas <= 3 ) {  // executa o la�o por 3 vezes

         // recebe a nota inserida pelo usu�rio atrav�s do m�todo showInputDialog da classe JOptionPane
         strNota = JOptionPane.showInputDialog(null,"Digite o valor da Nota: ", "Calculo da M�dia", JOptionPane.QUESTION_MESSAGE);

         // converte a nota de String para Integer
         intNota= Integer.parseInt( strNota );

         // Adiciona a nota na vari�vel soma
         soma = soma + intNota;  

         // adiciona 1 na vari�vel Contador
         Cont_Notas = Cont_Notas + 1;
      }
   
      // Termino do la�o while
      media = soma / 3;  // realiza o calculo da media

      // mostra o resultado da m�dia na tela atrav�s do m�todo showMessageDialog da classe JOptionPane
      JOptionPane.showMessageDialog(null, "a media e:" +  media, "M�dia do Aluno", JOptionPane.PLAIN_MESSAGE );

      System.exit( 0 );      // termina o programa
   }
}

