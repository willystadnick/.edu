//Exemplo de um simples aplicativo que recebe o valor da nota e mostra o conceito 
//Estrutura de Desvio de Fluxo utilizada - "IF - ELSE"

import javax.swing.JOptionPane; // importa��o da Classe JOPtionPane que pertence ao pacote javax.swing
public class  ExemploIf2
{
	public static void main(String[] args) 
	{
		//Declara��o e inicializa��o de vari�veis
		int intNota = 0;
		String strNota = "";
	
		//Recebe as notas digitadas pelo usu�rio atrav�s do m�todo showInputDialog
			strNota = JOptionPane.showInputDialog (null, "Digite o valor da Nota", "Nota", 
													JOptionPane.QUESTION_MESSAGE); 
			// utiliza��o do m�todo showInputDialog da classe JOptionPane
			// Este m�todo exige a passagem de alguns argumentos, utilizou-se 4 argumentos:
			// 1� argumento - padr�o (null); 2� argumento - mostrar mensagem; 
			// 3� argumento - barra de t�tulo da janela; 4� argumento - t�po de �cone exibido na janela
		
		//Convers�o de String para Integer
		intNota = Integer.parseInt(strNota);

			if (intNota >=9) {
				// utiliza��o do m�todo showMessageDialog da classe JOptionPane. 
				// Este m�todo exige a passagem de alguns argumentos, aqui utilzou 4 argumentos:
				// 1� argumento - padr�o (null); 2� argumento - mostrar mensagem; 
				// 3� argumento - barra de t�tulo da janela; 4� argumento - t�po de �cone exibido na janela
				JOptionPane.showMessageDialog (null, "O conceito = A", "Resultado", JOptionPane.PLAIN_MESSAGE);

			}
			else if (intNota >=8) {
				JOptionPane.showMessageDialog (null, "O conceito = B", "Resultado", JOptionPane.PLAIN_MESSAGE);
			}
			else if (intNota >=7) {
				JOptionPane.showMessageDialog (null, "O conceito = C", "Resultado", JOptionPane.PLAIN_MESSAGE);
			}
			else if (intNota >=6) { 
				JOptionPane.showMessageDialog (null, "O conceito = D", "Resultado", JOptionPane.PLAIN_MESSAGE);
			}
			else {
				JOptionPane.showMessageDialog (null, "O conceito = E", "Resultado", JOptionPane.PLAIN_MESSAGE);
			}

			System.exit ( 0 ); //termino do aplicativo

	}
}
