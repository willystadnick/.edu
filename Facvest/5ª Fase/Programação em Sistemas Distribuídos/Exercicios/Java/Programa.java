
/**
 * Classe Programa
 * 
 * Exemplo de Programação Orientada a Objetos:
 * - Herança
 * - Polimorfismo
 * - Sobrecarga de métodos e construtores
 * - Escopo de atributos e métodos (private, protected e public)  
 */
public class Programa {

  public static void main(String[] args) {
   
     //Criando um novo objeto "p" do tipo pessoa. 
	Pessoa p = new Pessoa();
    
    /*Alterando os dados padrao
	Toda vez que "new" cria um objeto de uma classe, o construtor dessa classe
	é chamado para inicializar as variáveis de instância do novo objeto.
	*/
    p.alteraNome("João da Silva");
    p.alteraAltura(1.9);
    p.alteraPeso(80);
    p.alteraComentario("Gente boa!!!");
	/*
     * Para escrever na tela de maneira básica utiliza-se 'System.out.println()'
     * como no exemplo abaixo.
     */
    System.out.println(p.retornaDescricao());
               
                     
    /*
     * Criando uma pessoa que seja um professor
	 Neste caso será criado um objeto "prof" do tipo Professor, que pode herdar
	 dados de sua super classe Pessoa.
     */
    Professor prof = new Professor();
    prof.alteraNome("José de Souza");
    prof.alteraCargaHoraria(40);
    prof.alteraTitulo("Doutor");
    prof.alteraAnoAdmissao(1999);
    prof.alteraCursoFormacao("Ciência da Computação");
    /*
     * Ao chamar o método 'getDescricao', será chamado o método da classe
     * 'Professor' e não da classe 'Pessoa', pois o mesmo foi sobreescrito.
     */
    System.out.println(prof.retornaDescricao());
    /*
     * Está sendo chamado o método 'getDescricao' de professor, porém agora é 
     a versão com um parâmetro. Exemplo de uso de um método sobrecarregado.
     A constante está sendo chamada diretamente, ou seja, pelo nome da classe
     mais o nome da constante. Isso porque ela é 'static' 
     */
     System.out.println(prof.retornaDescricao(Professor.PROFESSOR));
       
       
    /*
     *criando um objeto "p2" do tipo Pessoa
     */
      
    Pessoa p2 = new Professor();
    p2.alteraNome("Francisco de Assis");
    /*
     * Como o tipo de 'p2' é 'Pessoa' os métodos de professor não estao visiveis,
     * mas foi construido com o construtor de 'Professor' como pode ser visto acima,
     * logo é preciso converter 'p2' para 'Professor' e isso se dá da seguinte maneira:
     * 
     * (Professor)p2
     * 
     * Se 'Professor' não fosse filha de 'Pessoa' então nao seria possível construir
     * um objeto do tipo 'Pessoa' com o construtor de 'Professor'
     */
    ((Professor)p2).alteraCargaHoraria(30);
    ((Professor)p2).alteraTitulo("Mestre");
    ((Professor)p2).alteraAnoAdmissao(1997);
    ((Professor)p2).alteraCursoFormacao("Ciência da Computação");
    /*
     * Mesmo o tipo de 'p2' sendo 'Pessoa' foi construido com o construtor de
     * 'Professor'. Isso é possível porque 'Professor' é filho de 'Pessoa', logo
     * se chamar o método 'getDescricao' como no exemplo abaixo, será chamado o método
     * de 'Professor'
     */
    System.out.println(p2.retornaDescricao());
     
    /*
     * Todas as classes em java já tem automaticamente um método chamado
     * 'getClass()' que serve para descobrirmos algumas informações sobre
     * a classe, como nos exemplos abaixo
     */
    System.out.println("=======================================================");
    System.out.println("O tipo de 'p' é: " + p.getClass().getName());
    System.out.println("O tipo de 'prof' é: " + prof.getClass().getName());
    System.out.println("O tipo pai de 'prof' é: " + prof.getClass().getSuperclass().getName());
    System.out.println("O tipo de 'p2' é: " + p2.getClass().getName());
    System.out.println("=======================================================");
   
    System.out.println("Polimorfismo: ");
    /*
     *Polimorfismo ocorre quando uma mesma mensagem enviada a diferentes objetos 
     *resulta em um comportamento que é dependente da natureza do objeto que está
     *recebendo a mensagem
    
    /*
     * Passando objetos de diferentes tipos, mas de mesma família para
     * o método 'imprime'
     */
    imprime(p);
    imprime(prof);
    imprime(p2);
  }
  
  /*
   * O método 'imprime' espera um parâmetro do tipo 'Pessoa', porém, é possível
   * passar a ele qualquer objeto que seja filho de 'Pessoa', ou seja, o método
   * aceita qualquer objeto da família 'Pessoa'. Isso é polimorfismo
   */
  private static void imprime(Pessoa p) {
    System.out.println(p.retornaDescricao());
  }
}


