import java.util.*;

public class VetorAssociacao extends ArrayList {

	public VetorAssociacao() {
	}
	
	public ArrayList retorneTodosA(Object qualB) {
		ArrayList todosA;
	
		todosA = new ArrayList();
	
		int n = this.size();
	
		for(int i=0; i < n; i++) {
	    	if(qualB == ((Associacao)this.get(i)).retorneB()) {
	      		todosA.add(((Associacao)this.get(i)).retorneA());
	    	}
	  	}
	
	  	return todosA;
	}
	
	public ArrayList retorneTodosB(Object qualA) {
		ArrayList todosB;
	
		todosB = new ArrayList();
	
		int n = this.size();
	
		for(int i=0; i < n; i++) {
	    	if(qualA == ((Associacao)this.get(i)).retorneA()) {
	      		todosB.add(((Associacao)this.get(i)).retorneB());
	    	}
	  	}
	
	  	return todosB;
	}
}