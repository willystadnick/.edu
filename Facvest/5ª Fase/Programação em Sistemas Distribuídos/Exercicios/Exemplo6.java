import javax.swing.JOptionPane;
    public class Exemplo6{
	    public static void main(String args[]){
	        //DECLARA��O, LEITURA E CONVERS�O DOS DADOS...
            float comprimento = Float.parseFloat(JOptionPane.showInputDialog("Digite o Comprimento: "));
            float largura = Float.parseFloat(JOptionPane.showInputDialog("Digite Largura: "));
            float profundidade = Float.parseFloat(JOptionPane.showInputDialog("Digite a Profundidade: "));
           	float area = (comprimento * largura * profundidade);
			float valormetro = 45;
			float valor=(area*valormetro);
			//RECONVERS�O DAS UNIDADES...
			String sarea = String.valueOf(area);
			String svalor = String.valueOf(valor);
			String svalormetro = String.valueOf(valormetro);
			//EXIBI��O DO TOTAL...
			JOptionPane.showMessageDialog(null,"A �rea Total da Picina �: " + sarea + " m�");
			JOptionPane.showMessageDialog(null,"O Custo p/ Construir a Picina �: " + svalor);
			//ENCERRA O PROGRAMA...
			System.exit(0);
			}
}