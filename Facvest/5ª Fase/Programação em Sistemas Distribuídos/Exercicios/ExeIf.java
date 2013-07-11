import javax.swing.JOptionPane;
    public class ExeIf{
	    public static void main(String args[]){
	        //DECLARAÇÃO, LEITURA E CONVERSÃO DOS DADOS...
            float valor1 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 1º Valor: "));
            float valor2 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 2º Valor: "));
            float valor3 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 3º Valor: "));
           	if (valor1>valor2){
          		if (valor1>valor3){
           			if(valor2>valor3){
           				JOptionPane.showMessageDialog(null,"Sequencia Crescente: "+valor1+" > "+valor2+" > "+valor3);
				 	}
				 	else{
				 		JOptionPane.showMessageDialog(null,"Sequencia Crescente: "+valor1+" > "+valor3+" > "+valor2);
				 	}
				}
				else{
					JOptionPane.showMessageDialog(null,"Sequencia Crescente: "+valor3+" > "+valor1+" > "+valor2);
				}
			}
			else{
				if(valor2>valor3){
					if(valor3>valor1){
					    JOptionPane.showMessageDialog(null,"Sequencia Crescente: "+valor2+" > "+valor3+" > "+valor1);
					}
					else{
						JOptionPane.showMessageDialog(null,"Sequencia Crescente: "+valor2+" > "+valor1+" > "+valor3);
					}
				}	
				else{
					JOptionPane.showMessageDialog(null,"Sequencia Crescente: "+valor3+" > "+valor2+" > "+valor1);	
				}
			}
			//ENCERRA O PROGRAMA...
			System.exit(0);
			}
}