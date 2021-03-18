import java.util.Scanner;
public class ParImparVetor {
	public static void main(String[] args) {
		Scanner in = new Scanner (System.in);

		int i, pares = 0, impares = 0;
		int indicePares = 0;
		int a[], b[];
		final int TAM = 20;
		a = new int [TAM];
		b = new int [TAM];

		for (i = 0; i < TAM; i++) {
			System.out.println("Insira o "+(i+1)+"° valor de A");
			a[i] = in.nextInt();
			if (a[i]%2==0) {
				pares++;
			}else {
				impares++;
			}
		}

		int indiceImpares = pares; 

		for (i = 0; i < TAM; i++) {
			if (a[i]%2==0) {
				b[indicePares] = a[i];
				indicePares++;
			}else {
				b[indiceImpares] = a[i];
				indiceImpares++;
			}	
		}

		System.out.println("\n");System.out.print("Vetor A: ");
		for (i = 0; i < TAM; i++) {
			System.out.print(a[i]+" ");
		}

		System.out.println("\n");System.out.print("Vetor B: ");
		for (i = 0; i < TAM; i++) {
			System.out.print(b[i]+" ");
		}

		in.close();	
	}

}