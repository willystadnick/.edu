public class SimpleThread1 implements Runnable {
     String nome;
     public SimpleThread1(String str) {
       nome = str;
     }
    public void run() {
        for (int i = 0; i < 10; i++) {
            System.out.println(i +" " + nome);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {}
        }
        System.out.println("ACABOU! " + nome);
    }
}
