import javax.swing.JOptionPane;
public class trab03{
	public static void main(String args[]){
		String A = JOptionPane.showInputDialog("Informe um n� qualquer ");
		int tam = A.length();
		System.out.print("O seguinte n� com espa�os: ");
		for(int i = 0; i < tam; i++){
		System.out.print("   " + A.charAt(i));}}}