import javax.swing.JOptionPane;
public class trab09{
	public static void main(String args[]){
		int dig[] = new int[11];
		int prod[] = new int[11];
		int i, soma = 0;
		String cpf = JOptionPane.showInputDialog("Digite os 9 primeiros números do CPFº: ");
		for(i = 0; i < 9; i++){
		dig[i] = (cpf.charAt(i));
		prod[i] = (dig[i] * (10 - i));
		soma = soma + prod[i];}
		if((soma % 11 == 0) || (soma % 11 == 1)){
			dig[9] = 0;}
		else{
			dig[10] = (11 - (soma % 11));}
		for(i = 0; i < 10; i++){
			prod[i] = (dig[i] * (11 - i));
			soma = soma + prod[i];}
		if((soma % 11 == 0) || (soma % 11 == 1)){
			dig[10] = 0;}
		else{
			dig[10] = (11 - (soma % 11));}
		System.out.println("O CPF com os dígitos verificadores corretos é...");
		for(i = 0; i < 9; i++){
			System.out.print(cpf.charAt(i));}
		System.out.print("-");
		for(i = 9; i < 11; i++){
			System.out.print(dig[i]);}}}