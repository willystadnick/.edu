public class TwoThreadsTest2 {
    public static void main (String[] args) {
	  SimpleThread1 t1 = new SimpleThread1("Chocolate");
	  SimpleThread1 t2 = new SimpleThread1("Sorvete");
	  SimpleThread1 t3 = new SimpleThread1("Biscoito");
      new Thread(t1).start();
      new Thread(t2).start();
      new Thread(t3).start();
    }
}
