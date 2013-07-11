public class DecThread extends Thread {
    public DecThread(String str) {
        super(str);
    }
    public synchronized void run() {
    	for (int i = 10; i > 0; i--) {
    		System.out.println(i);
         }
       
        System.out.println("ACABOU! " + getName());
    }
}

