public class Pessoa {

  /* 
   Atributos da classe pessoa.
   Estes atributos são todos privados. Os atributos (variáveis de instância) ou os métodos
   declarados com modificadores de acesso a membros private são acessíveis somente aos métodos
   da classe na qual eles são definidos.
  */
  private String nome;
  private String comentario;
  private double altura;
  private double peso;
  
  /*
   Construtor da classe. Inicializar com dados padrão.
   Quando um objeto é criado, seus atributos podem ser inicializados com um método construtor.
   O construtor é um método com o mesmo nome da classe. O programador de uma classe pode definir
   o construtor da classe, que é invocado (chamado) toda vez que o programa instancia (cria) um
   objeto dessa classe.
   *Um construtor padrão é um construtor sem argumentos. Se vc escrever o código para uma classe
   *sem construtores de nenhum tipo, a LP Java vai providenciar um construtor padrão. Este construtor
   *padrão inicializa todas as variáveis de instância com seus valores padrão. Assim, todos os dados
   *numéricos contidos nos campos de instância serão zerados, todas as variáveis objeto vão apontar 
   *para nulo e todas as variáveis lógicas serão falsas.
   *
  */
  public Pessoa() {
  	nome = "Nome Padrão";
    comentario = "Sem comentários!";
    altura = 0;
    peso = 0;
  } 
   
  
  /* Métodos GET/SET para acesso público aos atributos.
  Os atributos da classe Pessoa são do tipo private, logo não estarão acessíveis em nenhum local,
  exceto dentro dos métodos da classe que o mesmo foi criado. A manipulação destes atributos num 
  outro local só poderão ser realizados através das chamadas dos métodos. Desta forma faz-se
  necessário criar os métodos (SET) para alteração dos atributos e os métodos (GET) para resgatar
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
  
  //O método abaixo retorna uma descricao da pessoa baseada em seus atributos
  public String retornaDescricao() {
    return nome + " tem " + altura + "m de altura e pesa " + peso + "Kg" +
      " e todos dizem que é " + comentario;
  }
}
