//Exemplo de um simples aplicativo que mostra os valores m�nimos e m�ximos, enquanto m�nimo < m�ximo 
//Estrutura de Repeti��o Condicional utilizada - "do - while"

import javax.swing.JOptionPane; // importa��o da Classe JOPtionPane que pertence ao pacote javax.swing
public class  ExemploDoWhile2 {
	public static void main(String args[]) {
		
		//declara��o de vari�veis
		int intMin, intMax;
		String strMin, strMax;

		//Recebe o valor minimo digitado pelo usu�rio atrav�s do m�todo showInputDialog
		strMin = JOptionPane.showInputDialog (null, "Digite o valor Minimo", "Valor M�nimo", 
											  JOptionPane.QUESTION_MESSAGE); 

		//Recebe o valor m�ximo digitado pelo usu�rio atrav�s do m�todo showInputDialog
		strMax = JOptionPane.showInputDialog (null, "Digite o valor Maximo", "Valor M�ximo", 
											  JOptionPane.QUESTION_MESSAGE); 

		//Convers�o de String para Integer
		intMin = Integer.parseInt(strMin);
		intMax = Integer.parseInt(strMax);

	    do 
		{
			JOptionPane.showMessageDialog (null, intMin + " < " + intMax, "Resultado", JOptionPane.PLAIN_MESSAGE);
			intMin++;intMax--;
		}
		while (intMin < intMax);
				
	}
}
