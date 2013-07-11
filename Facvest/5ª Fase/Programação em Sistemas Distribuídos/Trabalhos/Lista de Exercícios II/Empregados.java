import javax.swing.JOptionPane;

public class Empregados{
	private String nome;
	private String documento;
	private String contato;
	private String endereco;
	private String cargo;
	private float salario;

    public Empregados(){
		nome=null;
		documento=null;
		contato=null;
		endereco=null;
		cargo=null;
		salario=0;}

	public String mostraNome(){
		return nome;}

	public String mostraDocumento(){
		return documento;} 

	public String mostraContato(){
		return contato;}

	public String mostraEndereco(){
		return endereco;}

	public String mostraCargo(){
		return cargo;}

	public float mostraSalario(){
		return salario;}

	public String mostraTudo(){
		return "\n\nNOME ............:  "+nome+"\n\nDOCUMENTO .......:  "+documento+"\n\nCONTATO .........:  "+contato+"\n\nENDEREÇO ........:  "+endereco+"\n\nSALÁRIO .........:  "+salario;}
		
	public Empregados pegaDados(Empregados obj){
		obj.nome = JOptionPane.showInputDialog("Nome ");
		obj.documento = JOptionPane.showInputDialog("Documento ");
		obj.contato = JOptionPane.showInputDialog("Contato ");
		obj.endereco = JOptionPane.showInputDialog("Endereco ");
		return obj;}

	public void alteraNome(String novoNome){
		nome = novoNome;}
		
	public void alteraDocumento(String novoDocumento){
		documento = novoDocumento;}
		
	public void alteraContato(String novoContato){
		contato = novoContato;}
		
	public void alteraEndereco(String novoEndereco){
		endereco = novoEndereco;}

	public void alteraCargo(String novoCargo){
		cargo = novoCargo;}
		
	public void alteraSalario(float novoSalario){
		salario = novoSalario;}}