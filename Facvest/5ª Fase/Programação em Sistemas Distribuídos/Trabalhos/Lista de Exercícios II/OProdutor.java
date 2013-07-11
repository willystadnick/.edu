import javax.swing.JOptionPane;
import java.lang.*;  

public class OProdutor extends Empregados {
	private float producao;
	private float valorItem;
	Empregados produtor = new Empregados();

	public OProdutor(){
		producao=0;
		valorItem=0;}

	public void alteraValorItem(float novoValorItem){
		valorItem = novoValorItem;}

	public String mostraTudo(){
		return produtor.mostraTudo()+"\n\nPRODUCAO......:  "+producao+"VALOR DO ITEM......: "+valorItem;}
	
	public void criaProdutor(){
		produtor.alteraNome(JOptionPane.showInputDialog("Nome "));
		produtor.alteraDocumento(JOptionPane.showInputDialog("Documento "));
		produtor.alteraContato(JOptionPane.showInputDialog("Contato "));
		produtor.alteraEndereco(JOptionPane.showInputDialog("Endereco "));
		produtor.alteraCargo("Produtor") ;
	    producao = Integer.parseInt(JOptionPane.showInputDialog("Producao "));
	    valorItem = Float.parseFloat(JOptionPane.showInputDialog("Valor do Item "));
  		produtor.alteraSalario(producao*valorItem);	 	  
	  	JOptionPane.showMessageDialog(null,"Produtor\n"+mostraTudo()+" Empreitado","Confirmar",0);}}