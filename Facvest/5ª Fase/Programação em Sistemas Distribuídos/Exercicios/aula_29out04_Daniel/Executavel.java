//criar executavel
/*
crie um obj pessoa
exemplo p1= new Pessoa();
altere os atributos do obj p1 atraves dos metodos da class Pessoa
exemplo p1.altnome("novonome");
IDEM para tds os atributos e metodos da classe pessoa

crie um (obj)pessoa q seja um prof
exemplo professor prof1 = new professor();
altere os atributos do obj prof atraves dos 
metodos da class Professor e pessoa
exemplo da subclass: prof.altCargahoraria(20);
exemplo superclass: prof.altnome("novonome")
*/
import javax.swing.JOptionPane;

public class Executavel {
	public static void main (String args []){
		
	  Pessoa p = new Pessoa();
		
		p.AltNome ("Joao da Vida");
        p.AltAltura (2);
        p.AltPeso (90);
        p.AltComentario ("Esse e o Joao");
   	
   	JOptionPane.showMessageDialog(null,""+p.Descricao());
        
      Professor prof = new Professor(); 
    
        prof.AltNome("Otro Joao");
        prof.AltAltura (2);
        prof.AltPeso (90);        
        prof.AltcargaHoraria(40);
        prof.Alttitulo("Doutor");
        prof.AltanoAdmissao(1999);
        prof.AltcursoFormacao("Ciencia da Computação");
     	JOptionPane.showMessageDialog(null,""+prof.Descricao());
     	/*
     	Todas as classes em java jaH tem automaticamente
     	1 metodo chamado: "getClass()" q serve p/
     	descobrimermos algumas informacoes sobre a classe.
     	Ex(Abaixo ) 
     	*/
     
     	System.out.println("===============================================\n\n");
     	System.out.println("O tipo de 'p' e :......."+p.getClass().getName()+"\n\n");
     	System.out.println("O tipo de 'prof' e :......."+prof.getClass().getName()+"\n\n");
     	System.out.println("O tipo pai de 'prof' e :......."+prof.getClass().getSuperclass().getName()+"\n\n");
        System.out.println("===============================================");
        
        /*
         Polimorfismo
         
          O 'metodo' imprime espera 1 parametro do tipo 'Pessoa',
          porem, e possivel passar a ele qlqr objeto q seja
          filho de 'Pessoa', ou seja, o metodo aceita qlqr objeto
          da familia 'Pessoa'. Isso eh Polimorfismo..
          Ex(Abaixo )
        

       private static void Imprime(Pessoa p){ 
           System.out.println(p.Descricao()); }

        Imprime(p);
        Imprime(prof);
		
*/		
		System.exit(9);
		}
 }
 
 
 
 
 
 
 
 
 
 