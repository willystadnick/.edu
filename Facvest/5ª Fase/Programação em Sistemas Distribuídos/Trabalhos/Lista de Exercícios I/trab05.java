import javax.swing.JOptionPane;
public class trab05{
	public static void main(String args[]){
		int valor1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1º valor: "));
		int valor2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 2º valor: "));
		int valor3 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 3º valor: "));
		if((valor1-valor2) < (valor3) && (valor3) < (valor1+valor2)){
			System.out.println("Os valores digitados formam um triângulo...");}
		else{
			System.out.println("Os valores digitados não formam um triângulo...");}}}