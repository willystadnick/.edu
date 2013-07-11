import javax.swing.JOptionPane;
import java.lang.*;  

public class OHorista extends Empregados{
	private float totalHoras;
	private float valorHora;
	Empregados horista = new Empregados();

	public OHorista(){
		totalHoras=0;valorHora=0;}

	public void alteraHoras(float novoHoras){
		totalHoras = novoHoras;}
		
	public void alteraValorHora(float novoValorHora){
		valorHora = novoValorHora;}    

	public String mostraTudo(){
		return horista.mostraTudo()+"\n\n________________________\nDetalhamento:\nVALOR DA HORA......:  "+valorHora+"\nTOTAL DE HORAS......:  "+totalHoras;}
	
	public void criaHorista(){
		horista = horista.pegaDados(horista);
		horista.alteraCargo("Horista");
	    totalHoras = Integer.parseInt(JOptionPane.showInputDialog("Total de horas "));
	    valorHora = Integer.parseInt(JOptionPane.showInputDialog("Valor da hora "));
	    if(totalHoras>160) totalHoras = (totalHoras-160)*2+160;
  		horista.alteraSalario(totalHoras*valorHora);	 
	  	JOptionPane.showMessageDialog(null,"Horista\n"+mostraTudo()+" Horas Normais + adicionais\n'100% Acima de 160 horas mensais'\n","Confirmar",0);}}