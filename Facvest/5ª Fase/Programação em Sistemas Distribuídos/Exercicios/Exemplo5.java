import javax.swing.JOptionPane;
    public class Exemplo5{
	    public static void main(String args[]){
	        //DECLARA��O, LEITURA E CONVERS�O DOS DADOS...
            float valor1 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 1� Valor: "));
            float valor2 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 2� Valor: "));
            float valor3 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 3� Valor: "));
           	float soma=(valor1 + valor2 + valor3 + valor4);
			float media=((valor1 + valor2 + valor3 + valor4)/4);
			float resto1=(soma/valor1);
			float resto2=(soma/valor2);
			float resto3=(soma/valor3);
			float resto4=(soma/valor4);
			//RECONVERS�O DAS UNIDADES...
			String ssoma = String.valueOf(soma);
			String smedia = String.valueOf(media);
			String sresto1 = String.valueOf(resto1);
			String sresto2 = String.valueOf(resto2);
			String sresto3 = String.valueOf(resto3);
			String sresto4 = String.valueOf(resto4);
			//EXIBI��O DO TOTAL...
			JOptionPane.showMessageDialog(null,"A Soma dos Valores �: " + ssoma);
			JOptionPane.showMessageDialog(null,"A M�dia dos Valores �: " + smedia);
			JOptionPane.showMessageDialog(null,"A Divis�o do 1� Valor pela Soma �: " + sresto1);
			JOptionPane.showMessageDialog(null,"A Divis�o do 2� Valor pela Soma �: " + sresto2);
			JOptionPane.showMessageDialog(null,"A Divis�o do 3� Valor pela Soma �: " + sresto3);
			JOptionPane.showMessageDialog(null,"A Divis�o do 4� Valor pela Soma �: " + sresto4);
			//ENCERRA O PROGRAMA...
			System.exit(0);
			}
}