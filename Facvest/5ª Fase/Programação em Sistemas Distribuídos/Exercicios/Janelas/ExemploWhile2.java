//Exemplo de um simples aplicativo que recebe o valor de 3 notas para realizar o cálculo da média
//Estrutura de Repeticao utilizada - "WHILE"

import javax.swing.JOptionPane; // importação da Classe JOptionPane que está no pacote javax.swing

public class ExemploWhile2 {
   public static void main( String args[] ) 
   {
      int soma,			     // variável que conterá a soma das notas
          Cont_Notas,		 // variável para contagem das notas
          intNota,			 // variável do tipo inteiro que armazenará o valor da nota
          media;			 // variável que conterá o valor da media das notas
      String strNota;		 // variável do tipo String que receberá o valor da nota inserida pelo usuário
   
      // inicialização de variáveis
      soma = 0;				 // limpa a variável soma
      Cont_Notas = 1;		 // inicializa o contador de notas
   
      // Processamento do laço while
      while ( Cont_Notas <= 3 ) {  // executa o laço por 3 vezes

         // recebe a nota inserida pelo usuário através do método showInputDialog da classe JOptionPane
         strNota = JOptionPane.showInputDialog(null,"Digite o valor da Nota: ", "Calculo da Média", JOptionPane.QUESTION_MESSAGE);

         // converte a nota de String para Integer
         intNota= Integer.parseInt( strNota );

         // Adiciona a nota na variável soma
         soma = soma + intNota;  

         // adiciona 1 na variável Contador
         Cont_Notas = Cont_Notas + 1;
      }
   
      // Termino do laço while
      media = soma / 3;  // realiza o calculo da media

      // mostra o resultado da média na tela através do método showMessageDialog da classe JOptionPane
      JOptionPane.showMessageDialog(null, "a media e:" +  media, "Média do Aluno", JOptionPane.PLAIN_MESSAGE );

      System.exit( 0 );      // termina o programa
   }
}

