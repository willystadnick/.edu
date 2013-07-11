public class trab01{
	public static void main(String Args[]){
		int dado = 0;
		for(int i=0; i<=11; i++){
			dado = (int)(Math.random()*6);
			if(dado > 0){
				System.out.println((i + 1) + "°: " + (dado + 1));}
			else {i--;}}}}