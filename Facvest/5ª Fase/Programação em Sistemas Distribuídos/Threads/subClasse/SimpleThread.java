public class SimpleThread extends Thread {
    public SimpleThread(String str) {
        super(str);
    }
    public void imprimeValor() {
  	  for (int i = 0; i < 10; i++) 
        System.out.println(i + " " + getName());
    }
    public void run() {
	  imprimeValor();
    }
}
