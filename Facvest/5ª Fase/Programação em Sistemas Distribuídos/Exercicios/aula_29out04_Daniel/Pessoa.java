public class Pessoa{
    
    // declaração de atributos
	private String nome;
	private double altura;
	private double peso;
	private String comentario;
	
	// criando método construtor e inicializando todas as variaveis
	public Pessoa()
	{
	    nome = "null";
		altura = 0;
		peso = 0;
		comentario = "null";
	}
	
   // alterações nos atributos
   public void AltNome (String Nnome) { nome  = Nnome;}
   public void AltAltura (double Naltura) { altura  = Naltura;}
   public void AltPeso (double Npeso) { peso  = Npeso;}
   public void AltComentario (String Ncomentario) { comentario  = Ncomentario;}
    
   // retornar valores dos atributos
   public String retornaNome() { return nome; }
   public double retornaAltura() { return altura; }
   public double retornaPeso() { return peso; }
   public String retornacomentario() { return comentario; }
   
    // retornar todos os dados para gerar informação "descrição"
    public String Descricao ()
    {
      return nome+" tem "+altura+"m de altura, "+peso+"kg =>\nTodos dizem: "+comentario;
    }  	

}
     
	
		 
	