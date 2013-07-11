import javax.swing.JOptionPane;
public class trab08{
	public void Condicao(double alt,double pes){
		String tipo= "null";
		double altura, peso = 0;
		double imc = (pes / (alt * alt));
		if(imc <= 18.9){
			tipo = "Abaixo do Peso";}
		else{   
			if(imc <= 24.9){
				tipo = "Normal";}
			else{
				if(imc <= 29.9){
					tipo = "Pré Obeso";}
				else{
					if(imc <= 34.9){
						tipo = "Obeso";}
					else{
						if(imc <= 39.9){
							tipo = "Obeso em Grau 2";}
						else{
							if(imc > 39.9){
								tipo = "Obeso em Grau 3";}}

	public void Imprime(String x){
		JOptionPane.showMessageDialog(null, "Resultado: " + x);}	 

	public static void main(String args[]){
		IMC obj = new IMC();
		int res = 1;
		do{		 
			obj.altura = Double.parseDouble(JOptionPane.showInputDialog("Digite a altura: "));
			obj.peso = Double.parseDouble(JOptionPane.showInputDialog("Digite o peso:: ")); 
			obj.Condicao(obj.altura,obj.peso);
			obj.Imprime(obj.tipo);
			res = Integer.parseInt(JOptionPane.showInputDialog("1 - Continuar | 2 - Sair"));}
		while(res == 1);
		System.exit(0);}}