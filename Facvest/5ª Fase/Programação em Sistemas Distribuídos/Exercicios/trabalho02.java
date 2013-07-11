public class Pessoa{
	private String nome, coment;
	private double altura, peso;
	public Pessoa(){
		nome = "null";
		coment = "null";
		altura = 0;
		peso = 0;}
	public void alteraNome(String novoNome){
		nome = novoNome;}
	public void alteraAltura(double novaAltura){
		altura = novoAltura;}
	public void alteraPeso(double novoPeso){
		peso = novoPeso;}
	public void alteraComentario(String novoComent){
		coment = novoComent;}
	public String nomePessoa(){
		return nome;}
	public double alturaPessoa(){
		return altura;}
	public double pesoPessoa(){
		return peso;}
	public String comentPessoa(){
		return coment;}
	public String descPessoa(){
		desc = "Nome: " + nome + "/n" + "Altura: " + altura + "/n" + "Peso: " + peso + "/n" + "Comentários: " + coment + "/n" + 
		return desc;}}