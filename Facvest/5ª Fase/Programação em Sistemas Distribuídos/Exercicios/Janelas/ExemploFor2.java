// Exemplo de um simples aplicativo que realiza a soma dos números inteiros pares de 2 até 100
// Estrutura de Repeticação Simples utilizada - "FOR"

import javax.swing.JOptionPane; //importação da Classe JOptionPane que está no pacote javax.swing

public class ExemploFor2 {
   public static void main( String args[] )
   {
     //Declaração e inicialização da variável soma
	  int soma = 0;

      //Processamento do laço For
	  for ( int numero = 2; numero <= 100; numero = numero +2 ) // esta instrução poderia ser substituida por =>>>
																//for ( int numero = 2; numero <= 100; numero =+2 )
         soma = soma + numero; //esta instrução poderia ser substituída por =>> soma =+ numero;

      JOptionPane.showMessageDialog( null,"A soma e " + soma, "Soma dos números pares de 2 até 100", JOptionPane.INFORMATION_MESSAGE );

      System.exit( 0 );   //termina o aplicativo
   }
}

