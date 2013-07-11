public class Pessoa {

  /* 
   Atributos da classe pessoa.
   Estes atributos s�o todos privados. Os atributos (vari�veis de inst�ncia) ou os m�todos
   declarados com modificadores de acesso a membros private s�o acess�veis somente aos m�todos
   da classe na qual eles s�o definidos.
  */
  private String nome;
  private String comentario;
  private double altura;
  private double peso;
  
  /*
   Construtor da classe. Inicializar com dados padr�o.
   Quando um objeto � criado, seus atributos podem ser inicializados com um m�todo construtor.
   O construtor � um m�todo com o mesmo nome da classe. O programador de uma classe pode definir
   o construtor da classe, que � invocado (chamado) toda vez que o programa instancia (cria) um
   objeto dessa classe.
   *Um construtor padr�o � um construtor sem argumentos. Se vc escrever o c�digo para uma classe
   *sem construtores de nenhum tipo, a LP Java vai providenciar um construtor padr�o. Este construtor
   *padr�o inicializa todas as vari�veis de inst�ncia com seus valores padr�o. Assim, todos os dados
   *num�ricos contidos nos campos de inst�ncia ser�o zerados, todas as vari�veis objeto v�o apontar 
   *para nulo e todas as vari�veis l�gicas ser�o falsas.
   *
  */
  public Pessoa() {
  	nome = "Nome Padr�o";
    comentario = "Sem coment�rios!";
    altura = 0;
    peso = 0;
  } 
   
  
  /* M�todos GET/SET para acesso p�blico aos atributos.
  Os atributos da classe Pessoa s�o do tipo private, logo n�o estar�o acess�veis em nenhum local,
  exceto dentro dos m�todos da classe que o mesmo foi criado. A manipula��o destes atributos num 
  outro local s� poder�o ser realizados atrav�s das chamadas dos m�todos. Desta forma faz-se
  necess�rio criar os m�todos (SET) para altera��o dos atributos e os m�todos (GET) para resgatar
  o valor real do atributo. 
  */
  public void alteraNome(String novoNome) {
    nome = novoNome;
  }
  
  public String retornaNome() {
    return nome;
  } 
  
  public void alteraComentario(String novoComentario) {
    comentario = novoComentario;
  }
  
  public String retornaComentario() {
    return comentario;
  }
  
  public void alteraAltura(double novaAltura) {
    altura = novaAltura;
  }
  
  public double retornaAltura() {
    return altura;
  }
  
  public void alteraPeso(double novoPeso) {
    peso = novoPeso;
  }
  
  public double retornaPeso() {
    return peso;
  }
  
  //O m�todo abaixo retorna uma descricao da pessoa baseada em seus atributos
  public String retornaDescricao() {
    return nome + " tem " + altura + "m de altura e pesa " + peso + "Kg" +
      " e todos dizem que � " + comentario;
  }
}
