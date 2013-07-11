
/**
 * Classe Programa
 * 
 * Exemplo de Programa��o Orientada a Objetos:
 * - Heran�a
 * - Polimorfismo
 * - Sobrecarga de m�todos e construtores
 * - Escopo de atributos e m�todos (private, protected e public)  
 */
public class Programa {

  public static void main(String[] args) {
   
     //Criando um novo objeto "p" do tipo pessoa. 
	Pessoa p = new Pessoa();
    
    /*Alterando os dados padrao
	Toda vez que "new" cria um objeto de uma classe, o construtor dessa classe
	� chamado para inicializar as vari�veis de inst�ncia do novo objeto.
	*/
    p.alteraNome("Jo�o da Silva");
    p.alteraAltura(1.9);
    p.alteraPeso(80);
    p.alteraComentario("Gente boa!!!");
	/*
     * Para escrever na tela de maneira b�sica utiliza-se 'System.out.println()'
     * como no exemplo abaixo.
     */
    System.out.println(p.retornaDescricao());
               
                     
    /*
     * Criando uma pessoa que seja um professor
	 Neste caso ser� criado um objeto "prof" do tipo Professor, que pode herdar
	 dados de sua super classe Pessoa.
     */
    Professor prof = new Professor();
    prof.alteraNome("Jos� de Souza");
    prof.alteraCargaHoraria(40);
    prof.alteraTitulo("Doutor");
    prof.alteraAnoAdmissao(1999);
    prof.alteraCursoFormacao("Ci�ncia da Computa��o");
    /*
     * Ao chamar o m�todo 'getDescricao', ser� chamado o m�todo da classe
     * 'Professor' e n�o da classe 'Pessoa', pois o mesmo foi sobreescrito.
     */
    System.out.println(prof.retornaDescricao());
    /*
     * Est� sendo chamado o m�todo 'getDescricao' de professor, por�m agora � 
     a vers�o com um par�metro. Exemplo de uso de um m�todo sobrecarregado.
     A constante est� sendo chamada diretamente, ou seja, pelo nome da classe
     mais o nome da constante. Isso porque ela � 'static' 
     */
     System.out.println(prof.retornaDescricao(Professor.PROFESSOR));
       
       
    /*
     *criando um objeto "p2" do tipo Pessoa
     */
      
    Pessoa p2 = new Professor();
    p2.alteraNome("Francisco de Assis");
    /*
     * Como o tipo de 'p2' � 'Pessoa' os m�todos de professor n�o estao visiveis,
     * mas foi construido com o construtor de 'Professor' como pode ser visto acima,
     * logo � preciso converter 'p2' para 'Professor' e isso se d� da seguinte maneira:
     * 
     * (Professor)p2
     * 
     * Se 'Professor' n�o fosse filha de 'Pessoa' ent�o nao seria poss�vel construir
     * um objeto do tipo 'Pessoa' com o construtor de 'Professor'
     */
    ((Professor)p2).alteraCargaHoraria(30);
    ((Professor)p2).alteraTitulo("Mestre");
    ((Professor)p2).alteraAnoAdmissao(1997);
    ((Professor)p2).alteraCursoFormacao("Ci�ncia da Computa��o");
    /*
     * Mesmo o tipo de 'p2' sendo 'Pessoa' foi construido com o construtor de
     * 'Professor'. Isso � poss�vel porque 'Professor' � filho de 'Pessoa', logo
     * se chamar o m�todo 'getDescricao' como no exemplo abaixo, ser� chamado o m�todo
     * de 'Professor'
     */
    System.out.println(p2.retornaDescricao());
     
    /*
     * Todas as classes em java j� tem automaticamente um m�todo chamado
     * 'getClass()' que serve para descobrirmos algumas informa��es sobre
     * a classe, como nos exemplos abaixo
     */
    System.out.println("=======================================================");
    System.out.println("O tipo de 'p' �: " + p.getClass().getName());
    System.out.println("O tipo de 'prof' �: " + prof.getClass().getName());
    System.out.println("O tipo pai de 'prof' �: " + prof.getClass().getSuperclass().getName());
    System.out.println("O tipo de 'p2' �: " + p2.getClass().getName());
    System.out.println("=======================================================");
   
    System.out.println("Polimorfismo: ");
    /*
     *Polimorfismo ocorre quando uma mesma mensagem enviada a diferentes objetos 
     *resulta em um comportamento que � dependente da natureza do objeto que est�
     *recebendo a mensagem
    
    /*
     * Passando objetos de diferentes tipos, mas de mesma fam�lia para
     * o m�todo 'imprime'
     */
    imprime(p);
    imprime(prof);
    imprime(p2);
  }
  
  /*
   * O m�todo 'imprime' espera um par�metro do tipo 'Pessoa', por�m, � poss�vel
   * passar a ele qualquer objeto que seja filho de 'Pessoa', ou seja, o m�todo
   * aceita qualquer objeto da fam�lia 'Pessoa'. Isso � polimorfismo
   */
  private static void imprime(Pessoa p) {
    System.out.println(p.retornaDescricao());
  }
}


