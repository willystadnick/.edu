public class TwoThreadsTest {
    public static void main (String[] args) {
        new SimpleThread("Chocolate").start();
        new SimpleThread("Sorvete").start();
        
     }
}
