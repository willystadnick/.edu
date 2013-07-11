import javax.swing.JOptionPane;
import java.lang.*;  

public class OVendedor extends Empregados {
	private float porcentagem;
	private float totalVendas;
	Empregados vendedor = new Empregados();

	public OVendedor(){
		porcentagem=0;
		totalVendas=0;}

	public void alteraPorcentagem(float novoPorcentagem){
		porcentagem = novoPorcentagem;}
	
	public void alteraTotalVendas(float novoTotalVendas){
		totalVendas = novoTotalVendas;}

	public String mostraTudo(){
		return vendedor.mostraTudo()+"(Salario base + comissao)\n\n____________________\nDetalhamento\nTOTAL EM VENDAS......:  "+totalVendas+"\nPORCENTAGEM......:  "+porcentagem*100+"%";}
	
	public void criaVendedor(){
		vendedor = vendedor.pegaDados(vendedor);
		vendedor.alteraCargo("Vendedor") ;
	    alteraTotalVendas(Float.parseFloat(JOptionPane.showInputDialog("Total em Vendas ")));	
		alteraPorcentagem((Float.parseFloat(JOptionPane.showInputDialog("Porcentagem ")))/100);
		float sal = Float.parseFloat(JOptionPane.showInputDialog("Salario (base)"));  		
	  	vendedor.alteraSalario((totalVendas*porcentagem)+sal);	  	
	  	JOptionPane.showMessageDialog(null,"Vendedor\n"+mostraTudo(),"Confirmar",0);}}