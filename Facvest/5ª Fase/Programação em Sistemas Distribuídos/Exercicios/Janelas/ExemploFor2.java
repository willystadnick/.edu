// Exemplo de um simples aplicativo que realiza a soma dos n�meros inteiros pares de 2 at� 100
// Estrutura de Repetica��o Simples utilizada - "FOR"

import javax.swing.JOptionPane; //importa��o da Classe JOptionPane que est� no pacote javax.swing

public class ExemploFor2 {
   public static void main( String args[] )
   {
     //Declara��o e inicializa��o da vari�vel soma
	  int soma = 0;

      //Processamento do la�o For
	  for ( int numero = 2; numero <= 100; numero = numero +2 ) // esta instru��o poderia ser substituida por =>>>
																//for ( int numero = 2; numero <= 100; numero =+2 )
         soma = soma + numero; //esta instru��o poderia ser substitu�da por =>> soma =+ numero;

      JOptionPane.showMessageDialog( null,"A soma e " + soma, "Soma dos n�meros pares de 2 at� 100", JOptionPane.INFORMATION_MESSAGE );

      System.exit( 0 );   //termina o aplicativo
   }
}

