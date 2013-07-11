/*
 * A classe Professor é filha da classe Pessoa, portanto ela herda todos os atributos
 * e métodos. Tem-se então, exemplos da utilização de Herença.
 */
public class Professor extends Pessoa {
 
  /*
   * Atributos específicos da classe Professor 
   */
   private int cargaHoraria;
   private String titulo;
   private int anoAdmissao;
   private String cursoFormacao;
   
   /*
    * Os dois métodos abaixo são construtores sobrecarregados, pois existem
    * duas versões do mesmo construtor, porém com número diferente de parâmetros. 
    */
    
   /**
    * Construtor sem parâmetros
    */
    public Professor() {
    	titulo = "Graduado";
    	anoAdmissao = 2003;
    }
      
   /**
    * Construtor com dois parâmetros
    */
   public Professor(String novoTitulo, int novoAnoAdmissao) {
     titulo = novoTitulo;
     anoAdmissao = novoAnoAdmissao;
   }
   
   /*
    * Métodos GET/SET para acesso aos atributos 
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
    * O método abaixo sobreescreve o método 'getDescricao' da classe
    * 'Pessoa' que é a classe Pai da classe Professor
    * 
    * Nota: Como o atributo 'nome' da classe 'Pessoa' é 'private', então nem mesmo
    * esta classe 'Professor' que é filha consegue enxergar, 
    * logo ele tem que usar o método 'getNome()'. 
    * Se o atributo 'nome' da classe 'Pessoa' fosse 'protected' essa classe 'Professor'
    * poderia enxergar, pois somente as classes da família podem enxergar atributos
    * e métodos 'protected' 
    */
   public String retornaDescricao() {
     return this.retornaNome() + " é " + titulo + " em " + cursoFormacao + " e dá aula nesta instituicao " +
       "desde " + anoAdmissao;
   }
   
   
  /*
   * Em Java usa-se a palavra chave 'final' para denotar uma constante. A palavra chave 
   final indica que vc pode atribuir valor a variável uma vez e este valor fica definido 
   de uma vez para sempre. Por "default" recomenda-se usar todas as letras em MAIÚSCULA 
   para a constante.
   * Qdo uma constante deve ficar disponível para vários métodos dentro de uma única
   classe,tem-se uma constante de classe. Especifica-se uma constante de classe com as 
   palavras-chave 'static final'.
   * A declaração de constante de classe abaixo, quer dizer que esta não pode ser 
   sobreescrita em uma classe descendente de 'Professor', ou seja essa é a versão final.
   */

  public static final int PESSOA = 2;
  public static final int PROFESSOR = 1; 
 
   /*
    * O método abaixo demonstra a utilização de sobrecarga, ou seja, o método
    * 'getDescricao', porém com parâmetros diferentes do 'getDescricao' anterior.
    * Caso o 'tipoDescricao' seja igual a '1' entao é chamado o método 'getDescricao'
    * da classe professor e caso 'tipoDescricao' seja igual a '2' entao é chamado
    * o método 'getDescricao' da classe pai, ou seja, 'Pessoa', por isso está sendo 
    * utilizada a palavra 'super'.
    */
   
   
   public String retornaDescricao(int tipoDescricao) {
     if (tipoDescricao == PROFESSOR) {
       return retornaDescricao();  
     } else if (tipoDescricao == PESSOA) {
     //chama o método da classe pai (Pessoa)
       return super.retornaDescricao();
     } else {
      return retornaDescricao();
    }
  }
}
