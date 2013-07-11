import java.util.Date; 
import javax.swing.JOptionPane;  

class ManipData{
	private String data= " ";
	
	public ManipData(){}
	
	public String retornaData(){
		Date d = new Date();
		String data = "[";
		String hora = String.valueOf(d);
		data = data.concat(hora.substring(11,19));
		data = data.concat("] /");
		switch(d.getDay()){
			case 0:data = data.concat(" Domingo, ");break;
			case 1:data = data.concat(" Segunda, ");break;
			case 2:data = data.concat(" Terça, ");break;
			case 3:data = data.concat(" Quarta, ");break;
			case 4:data = data.concat(" Quinta, ");break;
			case 5:data = data.concat(" Sexta, ");break;
			case 6:data = data.concat(" Sábado, ");break;}
		data = data.concat(String.valueOf(d.getDate()));
		switch(d.getMonth()){
			case 0:data = data.concat(" de Janeiro de 20");break;
			case 1:data = data.concat(" de Feveiro de 20");break;
			case 2:data = data.concat(" de Março de 20");break;
			case 3:data = data.concat(" de Abril de 20");break;
			case 4:data = data.concat(" de Maio de 20");break;
			case 5:data = data.concat(" de Junho de 20");break;
			case 6:data = data.concat(" de Julho de 20");break;
			case 7:data = data.concat(" de Agosto de 20");break;
			case 8:data = data.concat(" de Setembro de 20");break;
			case 9:data = data.concat(" de Outubro de 20");break;
			case 10:data = data.concat(" de Novembro de 20");break;
			case 11:data = data.concat(" de Dezembro de 20");break;}
		String ano = "";
		ano = String.valueOf(d.getYear());
		data = data.concat(ano.substring(1));
		return data;}}