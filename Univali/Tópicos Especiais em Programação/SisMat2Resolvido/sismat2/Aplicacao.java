import java.util.*;

/**
 *  Aplica&ccedil;&atilde;o do sistema
 *  de matr&iacute;culas.
 */
public class Aplicacao extends Object {
	private Hashtable cadAlunos;
	private Hashtable cadDisciplinas;
	private VetorAssociacao cadMatriculas;

  /**
   * Construtor.
   */
  public Aplicacao() {
		cadAlunos = new Hashtable();
		cadDisciplinas = new Hashtable();
		cadMatriculas = new VetorAssociacao();
  }

  /**
   * Cadastra um aluno.
   * @param nome o nome do aluno
   * @param matricula matr&iacute;cula do aluno
   */
  public void cadastreAluno(String nome, String matricula) {
	if(nome.trim().equals("") || matricula.trim().equals("")) return;
	
    if(!cadAlunos.containsKey(matricula)) {
    	cadAlunos.put(matricula, new Aluno(nome, matricula));
    	System.out.println("Aluno Cadastrado - Matricula: " + matricula);
	}
  }

  /**
   * Cadastra uma disciplina.
   * @param codigo o codigo da disciplina
   * @param nome o nome da disciplina
   */
  public void cadastreDisciplina(Integer codigo, String nome) {
	if( nome.trim().equals("") ) return;
	
  	if(!cadDisciplinas.containsKey(codigo))	{
  		cadDisciplinas.put(codigo, new Disciplina(codigo, nome));
		System.out.println("Disciplina Cadastrada - Codigo: " + codigo);
	}
  }

  /**
   * Faz a matr&iacute;cula de um aluno numa disciplina.
   * @param matAluno a matr&iacute;cula do aluno
   * @param codDisciplina o c&oacute;digo da disciplina
   */
  public void matricule(String matAluno, Integer codDisciplina) {
  	// verifica se existe aluno cadastrado p/ matricula informada
  	if(!cadAlunos.containsKey(matAluno)) return;
	// verifica se ha disciplina cadastrada p/ codDisciplina informado
  	if(!cadDisciplinas.containsKey(codDisciplina)) return;

	Iterator matriculas = cadMatriculas.iterator();
	
	while(matriculas.hasNext()) {
		Associacao matriculaAtual = (Associacao)matriculas.next();
		
		if( ((String)matriculaAtual.retorneA()).equals(matAluno) )
			if( ((Integer)matriculaAtual.retorneB()).compareTo(codDisciplina) == 0 )
				return; // ja existe aluno cadastrado p/ disciplina
	}
	
	Associacao novaMatricula = new Associacao(matAluno, codDisciplina);
	
	cadMatriculas.add(novaMatricula);
	
	System.out.println("Matricula Efetivada");
  }

  /**
   * Obt&eacute;m todos os alunos.
   */
  public Enumeration retorneAlunos() {
    return cadAlunos.elements();
  }

  /**
   * Obt&eacute;m todas as disciplinas.
   */
  public Enumeration retorneDisciplinas() {
    return cadDisciplinas.elements();
  }

  /**
   * Obt&eacute;m os alunos de uma determinada disciplina.
   * @param discip a disciplina
   */
  public ArrayList retorneAlunosPorDisciplina(Disciplina discip) {
    return cadMatriculas.retorneTodosA(discip);
  }

  /**
   * Obt&eacute;m as disciplinas em que um aluno est&acute; matriculado.
   * @param aluno o aluno
   */
  public ArrayList retorneDisciplinasPorAluno(Aluno aluno) {
    return cadMatriculas.retorneTodosB(aluno);
  }
}