import javax.swing.JOptionPane;
public class trab11{
	public static void main(String args[]){
		String strn = JOptionPane.showInputDialog("Informe o nº de Equipes: ");
		int in = Integer.parseInt(strn);
		String Equipes[] = new String[in];
		for(int i = 0; i < in; i++){
			Equipes[i] = JOptionPane.showInputDialog("Escreva o nome da " + (i + 1) + "ª Equipe: ");}
		for(int j = 0; j < in; j++){
			System.out.println("A " + (j + 1) + "ª Equipe é:  " + Equipes[j]);}
		System.out.println(" ");
		System.out.println("Logo abaixo todas as possibilidades de Confronto: ");
		System.out.println(" ");
		int conf = 0;
		for(int i = 0; i < in; i++){
			for(int j = i + 1; j < in; j++){
				conf++;
				System.out.println(conf + "º Confronto: " + Equipes[i] + " vs " + Equipes[j] + " ");}}}}