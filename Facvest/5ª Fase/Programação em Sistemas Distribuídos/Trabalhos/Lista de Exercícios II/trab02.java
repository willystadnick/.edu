import javax.swing.JOptionPane;  

public class trab02{
	public static void main (String args[]){
		int op = 0;
		double n1,n2;
		do{
			int res = Integer.parseInt(JOptionPane.showInputDialog("Escolha a Fun��o:\n1)Arredondamento maior\n2)Arredondamento menor\n3)Maior n�mero\n4)Menor n�mero\n5)Raiz\n6)Potencia\n7)N�mero aleat�rio\n"));
			
			switch(res){
				case 1:
					n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um n�mero: "));}
					JOptionPane.showMessageDialog(null, Math.ceil(n1), "Resultado", 0);
					break;
				
				case 2:
					n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um n�mero: "));}
					JOptionPane.showMessageDialog(null, Math.floor(n1), "Resultado", 0);
					break;  	        
				
				case 3:
					n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1� n�mero: "));
					n2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 2� n�mero: "));}
					JOptionPane.showMessageDialog(null, Math.max(n1,n2), "Resultado", 0);
					break;  	        
					
				case 4:
					n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1� n�mero: "));
					n2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 2� n�mero: "));}
					JOptionPane.showMessageDialog(null, Math.min(n1,n2), "Resultado", 0);
					break;  	        
					
				case 5:
					n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um n�mero: "));}
					JOptionPane.showMessageDialog(null, Math.sqrt(n1), "Resultado", 0);
					break;
					
				case 6:
					n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um n�mero: "));	
					n2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o expoente: "));}
					JOptionPane.showMessageDialog(null, Math.pow(n1,n2), "Resultado", 0);
					break;
					
				case 7:
					n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite um n�mero para o valor m�ximo: "));}
					JOptionPane.showMessageDialog(null, (int)(Math.random()*(n1+1)), "Resultado", 0);
					break;
				
				default: JOptionPane.showMessageDialog(null, "Op��o Invalida!", 0);}
				
			op = Integer.parseInt(JOptionPane.showInputDialog("Selecione:\n1 - Continuar\n0 Sair"));}
		while (op == 1);
		System.exit(9);}}