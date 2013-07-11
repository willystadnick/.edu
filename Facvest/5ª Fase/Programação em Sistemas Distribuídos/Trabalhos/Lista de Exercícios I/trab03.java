import javax.swing.JOptionPane;
public class trab03{
	public static void main(String args[]){
		String A = JOptionPane.showInputDialog("Informe um nº qualquer ");
		int tam = A.length();
		System.out.print("O seguinte nº com espaços: ");
		for(int i = 0; i < tam; i++){
		System.out.print("   " + A.charAt(i));}}}