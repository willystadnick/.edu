import javax.swing.JOptionPane;

public class trab06{
	public static void main(String args []){         
		String data = null;
		PegaData n = new PegaData();
		if(n.trab06(JOptionPane.showInputDialog("Data: "))){
			System.out.println("Data digitada corretamente...");}
		else{
			System.out.println("Data digitada incorretamente...");}
		System.exit(9);}}