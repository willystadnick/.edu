import javax.swing.JOptionPane;
public class trab07{
	public static void main(String args[]){
		String Notas1[] = new String[4];
		String Notas2[] = new String[4];
		String Notas3[] = new String[4];
		String aux, aluno1, aluno2, aluno3;
		float media1, media2, media3;
		float total1, total2, total3;
		total1 = 0;
		aluno1 = JOptionPane.showInputDialog("Informe o nome do 1º Aluno: ");
		for(int i = 0; i < 3; i++){
			Notas1[i] = JOptionPane.showInputDialog("Informe a " + (i + 1) + "ª Nota do " + aluno1 + ": ");
			total1 = total1 + Float.parseFloat(Notas1[i]);}
		media1 = (total1 / 3);
		total2 = 0;
		aluno2 = JOptionPane.showInputDialog("Informe o nome do 2º Aluno: ");
		for(int i = 0; i < 3; i++){
			Notas2[i] = JOptionPane.showInputDialog("Informe a " + (i + 1) + "ª Nota do " + aluno2 + ": ");
			total2 = total2 + Float.parseFloat(Notas2[i]);}
		media2 = (total2 / 3);
		total3 = 0;
		aluno3 = JOptionPane.showInputDialog("Informe o nome do 3º Aluno: ");
		for(int i = 0; i < 3; i++){
			Notas3[i] = JOptionPane.showInputDialog("Informe a " + (i + 1) + "ª Nota do " + aluno3 + ": ");
			total3 = total3 + Float.parseFloat(Notas3[i]);}
		media3 = (total3 / 3);
		for(int i = 0; i < 3; i++){
			for(int j = i + 1; j < 3; j++){
				if(Float.parseFloat(Notas1[i]) > Float.parseFloat(Notas1[j])){
					aux = Notas1[i];
					Notas1[i] = Notas1[j];
					Notas1[j] = aux;}
				if(Float.parseFloat(Notas2[i]) > Float.parseFloat(Notas2[j])){
					aux = Notas2[i];
					Notas2[i] = Notas2[j];
					Notas2[j] = aux;}
				if(Float.parseFloat(Notas3[i]) > Float.parseFloat(Notas3[j])){
					aux = Notas3[i];
					Notas3[i] = Notas3[j];
					Notas3[j] = aux;}}}
		System.out.print("Notas em valores Crescentes do Aluno " + aluno1 + ": ");
		for(int i = 0; i < 3; i++){
			System.out.print(Notas1[i]);
			System.out.print(" - ");}
		System.out.println("");
		System.out.println("A soma total das notas do aluno " + aluno1 + " é: " + total1);
		System.out.println("A média do aluno " + aluno1 + " é: " + media1);
		System.out.print("Notas em valores Crescentes do Aluno " + aluno2 + ": ");
		for(int i = 0; i < 3; i++){
			System.out.print(Notas2[i]);
			System.out.print(" - ");}
		System.out.println("");
		System.out.println("A soma total das notas do aluno " + aluno2 + " é: " + total2);
		System.out.println("A média do aluno " + aluno2 + " é: " + media2);
		System.out.print("Notas em valores Crescentes do Aluno " + aluno3 + ": ");
		for(int i = 0; i < 3; i++){
			System.out.print(Notas3[i]);
			System.out.print(" - ");}
		System.out.println("");
		System.out.println("A soma total das notas do aluno " + aluno3 + " é: " + total3);
		System.out.println("A média do aluno " + aluno3 + " é: " + media3);
		for(int i = 0; i < 3; i++){
			for(int j = i + 1; j < 3; j++){
				if(Float.parseFloat(Notas1[i]) < Float.parseFloat(Notas1[j])){
					aux = Notas1[i];
					Notas1[i]= Notas1[j];
					Notas1[j] = aux;}
				if(Float.parseFloat(Notas2[i]) < Float.parseFloat(Notas2[j])){
					aux = Notas2[i];
					Notas2[i] = Notas2[j];
					Notas2[j] = aux;}
				if(Float.parseFloat(Notas3[i]) < Float.parseFloat(Notas3[j])){
					aux = Notas3[i];
					Notas3[i] = Notas3[j];
					Notas3[j] = aux;}}}
		System.out.print("Notas em valores Decrescentes do Aluno " + aluno1 + ": ");
		for(int x = 0; x < 3; x++){
			System.out.print(Notas1[x]);
			System.out.print(" - ");}
		System.out.println("");
		System.out.println("A soma total das notas do aluno " + aluno1 + " é: " + total1);
		System.out.println("A média do aluno " + aluno1 + " é: " + media1);
		System.out.print("Notas em valores Decrescentes do Aluno " + aluno2 + ": ");
		for(int x = 0; x < 3; x++){
			System.out.print(Notas2[x]);
			System.out.print(" - ");}
		System.out.println("");
		System.out.println("A soma total das notas do aluno " + aluno2 + " é: " + total2);
		System.out.println("A média do aluno " + aluno2 + " é: " + media2);
		System.out.print("Notas em valores Decrescentes do Aluno " + aluno3 + ": ");
		for(int x = 0; x < 3; x++){
			System.out.print(Notas3[x]);
			System.out.print(" - ");}
		System.out.println("");
		System.out.println("A soma total das notas do aluno " + aluno3 + " é: " + total3);
		System.out.println("A média do aluno " + aluno3 + " é: " + media3);}}