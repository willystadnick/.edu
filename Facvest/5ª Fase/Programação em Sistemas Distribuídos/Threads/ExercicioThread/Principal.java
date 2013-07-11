/*Crie um programa que possua duas threads. 
 *Uma deve incrementar uma variável e outra decrementar. 
 *Entretanto, a thread que faz o decremento deve verificar 
 *se o valor da variável é positivo; se não for, a variável 
 *não deve ser decrementada. Mostre o valor da variável na tela*/.


public class Principal {
    public static void main (String[] args) {
      new IncThread("Incrementa").start();
      new DecThread("Decrementa").start();
    }
}
