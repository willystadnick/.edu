//Exemplo de um simples aplicativo que mostra os valores mínimos e máximos, enquanto mínimo < máximo 
//Estrutura de Repetição Condicional utilizada - "do - while"

import javax.swing.JOptionPane; // importação da Classe JOPtionPane que pertence ao pacote javax.swing
public class  ExemploDoWhile2 {
	public static void main(String args[]) {
		
		//declaração de variáveis
		int intMin, intMax;
		String strMin, strMax;

		//Recebe o valor minimo digitado pelo usuário através do método showInputDialog
		strMin = JOptionPane.showInputDialog (null, "Digite o valor Minimo", "Valor Mínimo", 
											  JOptionPane.QUESTION_MESSAGE); 

		//Recebe o valor máximo digitado pelo usuário através do método showInputDialog
		strMax = JOptionPane.showInputDialog (null, "Digite o valor Maximo", "Valor Máximo", 
											  JOptionPane.QUESTION_MESSAGE); 

		//Conversão de String para Integer
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
