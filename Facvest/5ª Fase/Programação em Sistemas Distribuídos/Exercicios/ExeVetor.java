import javax.swing.JOptionPane;
    public class ExeFor{
	    public static void main(String args[]){
	        //DECLARA��O, LEITURA E CONVERS�O DOS DADOS...
            int vetor[] = new int[3];
            for (int i = 0; i<3; i++){
            	vetor[i] = int.parseInt(JOptionPane.showInputDialog("Digite o "+ i +"� N�mero do Vetor"));
        	}
        	for (int i = 0; i<3; i++){
        		if 
            
            float profundidade = Float.parseFloat(JOptionPane.showInputDialog("Digite a Profundidade: ")); 
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