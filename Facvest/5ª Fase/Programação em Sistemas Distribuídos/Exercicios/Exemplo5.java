import javax.swing.JOptionPane;
    public class Exemplo5{
	    public static void main(String args[]){
	        //DECLARAÇÃO, LEITURA E CONVERSÃO DOS DADOS...
            float valor1 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 1º Valor: "));
            float valor2 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 2º Valor: "));
            float valor3 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 3º Valor: "));
           	float soma=(valor1 + valor2 + valor3 + valor4);
			float media=((valor1 + valor2 + valor3 + valor4)/4);
			float resto1=(soma/valor1);
			float resto2=(soma/valor2);
			float resto3=(soma/valor3);
			float resto4=(soma/valor4);
			//RECONVERSÃO DAS UNIDADES...
			String ssoma = String.valueOf(soma);
			String smedia = String.valueOf(media);
			String sresto1 = String.valueOf(resto1);
			String sresto2 = String.valueOf(resto2);
			String sresto3 = String.valueOf(resto3);
			String sresto4 = String.valueOf(resto4);
			//EXIBIÇÃO DO TOTAL...
			JOptionPane.showMessageDialog(null,"A Soma dos Valores é: " + ssoma);
			JOptionPane.showMessageDialog(null,"A Média dos Valores é: " + smedia);
			JOptionPane.showMessageDialog(null,"A Divisão do 1º Valor pela Soma é: " + sresto1);
			JOptionPane.showMessageDialog(null,"A Divisão do 2º Valor pela Soma é: " + sresto2);
			JOptionPane.showMessageDialog(null,"A Divisão do 3º Valor pela Soma é: " + sresto3);
			JOptionPane.showMessageDialog(null,"A Divisão do 4º Valor pela Soma é: " + sresto4);
			//ENCERRA O PROGRAMA...
			System.exit(0);
			}
}