public class Pessoa {
	private String nome;
	
	public Pessoa(String novoNome) {
		nome = novoNome;
	}
	
	public String retorneNome()	{
		return nome;
	}
	
	public void altereNome(String novoNome)	{
		nome = novoNome;
	}
}
