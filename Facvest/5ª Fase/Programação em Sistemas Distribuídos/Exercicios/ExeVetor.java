import javax.swing.JOptionPane;
    public class ExeFor{
	    public static void main(String args[]){
	        //DECLARAÇÃO, LEITURA E CONVERSÃO DOS DADOS...
            int vetor[] = new int[3];
            for (int i = 0; i<3; i++){
            	vetor[i] = int.parseInt(JOptionPane.showInputDialog("Digite o "+ i +"º Número do Vetor"));
        	}
        	for (int i = 0; i<3; i++){
        		if 
            
            float profundidade = Float.parseFloat(JOptionPane.showInputDialog("Digite a Profundidade: ")); 
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