public class Professor extends Pessoa
    {
	  private int cargaHoraria;
	  private String titulo;
	  private int anoAdmissao;
	  private String cursoFormacao;
    
public Professor() 
    {
	  titulo = "Mestre"; 
      anoAdmissao = 2002;
	  cargaHoraria = 40;
	  cursoFormacao = "Ciencia da Computacao";
    }

// alterar atributos de professor

public void AltcargaHoraria(int NCargaHoraria){cargaHoraria = NCargaHoraria;}
public void Alttitulo(String NTitulacao) {titulo = NTitulacao;}
public void AltanoAdmissao(int NAnoAdmissao){anoAdmissao = NAnoAdmissao;}
public void AltcursoFormacao(String NCursoFormacao){cursoFormacao = NCursoFormacao;}       

// retornar todos os dados para gerar informação "descrição"

public int retornaCargaHoraria() { return cargaHoraria; }
public String retornaTitulo() { return titulo; }
public int retornaAnoAdmissao() { return anoAdmissao; }
public String retornaCursoFormacao() { return cursoFormacao; }

// retornar todos os dados para gerar informação "descrição"
public String Descricao()
{
 return this.retornaNome()+" eh "+titulo+" em "+cursoFormacao+
 ".\n Leciona nesta instituicao "+cargaHoraria+
 " horas/aula, desde"+anoAdmissao;
}  	
}

       