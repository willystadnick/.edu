public class Disciplina {
	private Integer codigo;
	private String nome;
	
	public Disciplina(Integer novoCodigo, String novoNome) {
		codigo = novoCodigo;
		nome = novoNome;
	}
	
	public Integer retorneCodigo() {
		return codigo;
	}
	
	public void altereCodigo(Integer novoCodigo) {
		codigo = novoCodigo;
	}
	
	public String retorneNome()	{
		return nome;
	}
	
	public void altereNome(String novoNome)	{
		nome = novoNome;
	}
	
	public String toString() {
		return "codigo: " + codigo + "; nome: " + nome;
	}
}
