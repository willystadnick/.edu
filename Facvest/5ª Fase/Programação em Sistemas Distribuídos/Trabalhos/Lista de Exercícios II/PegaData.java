import java.util.Date; 
import javax.swing.JOptionPane;  

class PegaData{
	private String dia;
	private String mes;
	private String ano;
	private boolean valido;
	
	public boolean VerificaData(String data){
		int Vdia,Vmes,Vano;
		try{
			if (data.length()==8||data.length()==10){
				dia = data.substring(0,2);
				mes = data.substring(3,5);
				ano = data.substring(6);
				Vdia = Integer.parseInt(dia.trim());
				Vmes = Integer.parseInt(mes.trim());
				Vano = Integer.parseInt(ano.trim());
				if (Vdia<=31&&Vdia>0&&Vmes<=12&&Vmes>0){
					valido=true;}
				else{
					System.out.println("Data invalida  "+dia+"/"+mes);
					valido=false;}}
			else{
				System.out.println("Data invalida  "+dia+"/"+mes+"/"+ano);
				valido=false;}}
		catch(Exception e){
			System.out.println("Data invalida!!!");
			valido=false;}   
		return valido;}}