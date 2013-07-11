public class Aluno extends Pessoa {
	private String matricula;
	
	public Aluno(String novoNome, String novaMatricula) {
		super(novoNome);
		matricula = novaMatricula;
	}
	
	public String retorneMatricula()
	{
    	return matricula;
	}
	
	public void altereMatricula(String novaMatricula)
	{
		matricula = novaMatricula;
	}

	public String toString() {
		return "matricula: " + matricula + "; nome: " + retorneNome();
	}

}
