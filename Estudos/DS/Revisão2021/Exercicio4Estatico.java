import java.util.Scanner;

public class Exercicio4Estatico {
	public static void main(String [] args){
		Scanner in = new Scanner(System.in);
		
		final int TAM = 9;
		int i, a[], b[], fatorial = 0;
			
		a = new int [TAM];
		b = new int [TAM];
		
		for(i = 0; i < TAM; i++){
			System.out.println("Entre com o valor: ");
			a[i] = in.nextInt();
			fatorial = a[i]; 
			b[i]= fatorial*(a[i] - 1);
		}
	
		for(i=0; i<= TAM; i++) {
			System.out.println("\n"+b[i]);
		}
	}
	
}
