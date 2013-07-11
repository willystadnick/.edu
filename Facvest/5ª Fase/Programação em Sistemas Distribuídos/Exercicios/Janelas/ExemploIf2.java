//Exemplo de um simples aplicativo que recebe o valor da nota e mostra o conceito 
//Estrutura de Desvio de Fluxo utilizada - "IF - ELSE"

import javax.swing.JOptionPane; // importação da Classe JOPtionPane que pertence ao pacote javax.swing
public class  ExemploIf2
{
	public static void main(String[] args) 
	{
		//Declaração e inicialização de variáveis
		int intNota = 0;
		String strNota = "";
	
		//Recebe as notas digitadas pelo usuário através do método showInputDialog
			strNota = JOptionPane.showInputDialog (null, "Digite o valor da Nota", "Nota", 
													JOptionPane.QUESTION_MESSAGE); 
			// utilização do método showInputDialog da classe JOptionPane
			// Este método exige a passagem de alguns argumentos, utilizou-se 4 argumentos:
			// 1º argumento - padrão (null); 2º argumento - mostrar mensagem; 
			// 3º argumento - barra de título da janela; 4º argumento - típo de ícone exibido na janela
		
		//Conversão de String para Integer
		intNota = Integer.parseInt(strNota);

			if (intNota >=9) {
				// utilização do método showMessageDialog da classe JOptionPane. 
				// Este método exige a passagem de alguns argumentos, aqui utilzou 4 argumentos:
				// 1º argumento - padrão (null); 2º argumento - mostrar mensagem; 
				// 3º argumento - barra de título da janela; 4º argumento - típo de ícone exibido na janela
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
