import javax.swing.JOptionPane;
public class trab05{
	public static void main(String args[]){
		int valor1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1� valor: "));
		int valor2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 2� valor: "));
		int valor3 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 3� valor: "));
		if((valor1-valor2) < (valor3) && (valor3) < (valor1+valor2)){
			System.out.println("Os valores digitados formam um tri�ngulo...");}
		else{
			System.out.println("Os valores digitados n�o formam um tri�ngulo...");}}}