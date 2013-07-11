public class Associacao {
	private Object objetoA; // matricula Aluno (String)
	private Object objetoB; // codigo Disciplina (Integer)

	public Associacao(Object a, Object b) {
		objetoA = a;
		objetoB = b;
	}
	
	public Object retorneA() {
		return objetoA;
	}
	
	public Object retorneB() {
		return objetoB;
	}
}

