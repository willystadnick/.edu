import javax.swing.JOptionPane;
    public class Exemplo3{
	    public static void main(String args[]){
	        //DECLARAÇÃO, LEITURA E CONVERSÃO DOS DADOS...
            float qtd1 = Float.parseFloat(JOptionPane.showInputDialog("Digite a Quantidade 1: "));
            float valor1 = Float.parseFloat(JOptionPane.showInputDialog("Digite o Valor 1: "));		
		    float qtd2 = Float.parseFloat(JOptionPane.showInputDialog("Digite a Quantidade 2: "));
		    float valor2 = Float.parseFloat(JOptionPane.showInputDialog("Digite o Valor 2: "));
		    float qtd3 = Float.parseFloat(JOptionPane.showInputDialog("Digite a Quantidade 3: "));
		    float valor3 = Float.parseFloat(JOptionPane.showInputDialog("Digite o Valor 3: "));
			//CALCULO...
			float total=((qtd1 * valor1) + (qtd2 * valor2) + (qtd3 * valor3));
			//RECONVERSÃO DAS UNIDADES...
			String stotal = String.valueOf(total);
			//EXIBIÇÃO DO TOTAL...
			JOptionPane.showMessageDialog(null, stotal);
			//ENCERRA O PROGRAMA...
			System.exit(0);
			}
}