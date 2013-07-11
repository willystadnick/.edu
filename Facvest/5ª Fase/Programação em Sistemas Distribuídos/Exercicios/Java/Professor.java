/*
 * A classe Professor � filha da classe Pessoa, portanto ela herda todos os atributos
 * e m�todos. Tem-se ent�o, exemplos da utiliza��o de Heren�a.
 */
public class Professor extends Pessoa {
 
  /*
   * Atributos espec�ficos da classe Professor 
   */
   private int cargaHoraria;
   private String titulo;
   private int anoAdmissao;
   private String cursoFormacao;
   
   /*
    * Os dois m�todos abaixo s�o construtores sobrecarregados, pois existem
    * duas vers�es do mesmo construtor, por�m com n�mero diferente de par�metros. 
    */
    
   /**
    * Construtor sem par�metros
    */
    public Professor() {
    	titulo = "Graduado";
    	anoAdmissao = 2003;
    }
      
   /**
    * Construtor com dois par�metros
    */
   public Professor(String novoTitulo, int novoAnoAdmissao) {
     titulo = novoTitulo;
     anoAdmissao = novoAnoAdmissao;
   }
   
   /*
    * M�todos GET/SET para acesso aos atributos 
    */
   public void alteraCargaHoraria(int novaCargaHoraria) {
     cargaHoraria = novaCargaHoraria;
   } 
   
   public int retornaCargaHoraria() {
     return cargaHoraria;
   }
   
   public void alteraTitulo(String novoTitulo) {
     titulo = novoTitulo;
   }
   
   public String retornaTitulo() {
     return titulo;
   }
   
   public void alteraAnoAdmissao(int novoAnoAdmissao) {
     anoAdmissao = novoAnoAdmissao;
   }
   
   public int retornaAnoAdmissao() {
     return anoAdmissao;
   }
   
   public void alteraCursoFormacao(String novoCursoFormacao) {
     cursoFormacao = novoCursoFormacao;
   }

    public String retornaCursoFormacao() {
     return cursoFormacao;
   }
   
   /*
    * O m�todo abaixo sobreescreve o m�todo 'getDescricao' da classe
    * 'Pessoa' que � a classe Pai da classe Professor
    * 
    * Nota: Como o atributo 'nome' da classe 'Pessoa' � 'private', ent�o nem mesmo
    * esta classe 'Professor' que � filha consegue enxergar, 
    * logo ele tem que usar o m�todo 'getNome()'. 
    * Se o atributo 'nome' da classe 'Pessoa' fosse 'protected' essa classe 'Professor'
    * poderia enxergar, pois somente as classes da fam�lia podem enxergar atributos
    * e m�todos 'protected' 
    */
   public String retornaDescricao() {
     return this.retornaNome() + " � " + titulo + " em " + cursoFormacao + " e d� aula nesta instituicao " +
       "desde " + anoAdmissao;
   }
   
   
  /*
   * Em Java usa-se a palavra chave 'final' para denotar uma constante. A palavra chave 
   final indica que vc pode atribuir valor a vari�vel uma vez e este valor fica definido 
   de uma vez para sempre. Por "default" recomenda-se usar todas as letras em MAI�SCULA 
   para a constante.
   * Qdo uma constante deve ficar dispon�vel para v�rios m�todos dentro de uma �nica
   classe,tem-se uma constante de classe. Especifica-se uma constante de classe com as 
   palavras-chave 'static final'.
   * A declara��o de constante de classe abaixo, quer dizer que esta n�o pode ser 
   sobreescrita em uma classe descendente de 'Professor', ou seja essa � a vers�o final.
   */

  public static final int PESSOA = 2;
  public static final int PROFESSOR = 1; 
 
   /*
    * O m�todo abaixo demonstra a utiliza��o de sobrecarga, ou seja, o m�todo
    * 'getDescricao', por�m com par�metros diferentes do 'getDescricao' anterior.
    * Caso o 'tipoDescricao' seja igual a '1' entao � chamado o m�todo 'getDescricao'
    * da classe professor e caso 'tipoDescricao' seja igual a '2' entao � chamado
    * o m�todo 'getDescricao' da classe pai, ou seja, 'Pessoa', por isso est� sendo 
    * utilizada a palavra 'super'.
    */
   
   
   public String retornaDescricao(int tipoDescricao) {
     if (tipoDescricao == PROFESSOR) {
       return retornaDescricao();  
     } else if (tipoDescricao == PESSOA) {
     //chama o m�todo da classe pai (Pessoa)
       return super.retornaDescricao();
     } else {
      return retornaDescricao();
    }
  }
}
