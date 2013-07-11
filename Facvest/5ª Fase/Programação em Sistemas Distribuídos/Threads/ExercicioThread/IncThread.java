public class IncThread extends Thread {
    public IncThread(String str) {
        super(str);
    }
    public synchronized  void run() {
    	for (int i = 0; i <= 10; i++) {
            System.out.println(i);
         }
        System.out.println("ACABOU! " + getName());
    }
}
