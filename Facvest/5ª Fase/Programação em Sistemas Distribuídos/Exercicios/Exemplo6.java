import javax.swing.JOptionPane;
    public class Exemplo6{
	    public static void main(String args[]){
	        //DECLARAÇÃO, LEITURA E CONVERSÃO DOS DADOS...
            float comprimento = Float.parseFloat(JOptionPane.showInputDialog("Digite o Comprimento: "));
            float largura = Float.parseFloat(JOptionPane.showInputDialog("Digite Largura: "));
            float profundidade = Float.parseFloat(JOptionPane.showInputDialog("Digite a Profundidade: "));
           	float area = (comprimento * largura * profundidade);
			float valormetro = 45;
			float valor=(area*valormetro);
			//RECONVERSÃO DAS UNIDADES...
			String sarea = String.valueOf(area);
			String svalor = String.valueOf(valor);
			String svalormetro = String.valueOf(valormetro);
			//EXIBIÇÃO DO TOTAL...
			JOptionPane.showMessageDialog(null,"A Área Total da Picina é: " + sarea + " m³");
			JOptionPane.showMessageDialog(null,"O Custo p/ Construir a Picina é: " + svalor);
			//ENCERRA O PROGRAMA...
			System.exit(0);
			}
}