import java.util.Scanner;
public class TabuadaFor {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int numero, i, resultado;
		
		System.out.println("Digite um número para saber sua tabuada: ");
		numero = leia.nextInt();
		leia.close();
		
		for(i = 0; i < 11; i++) {
			resultado = i * numero;
			System.out.println(numero + " x " +i+ " = " + resultado);
		}
		
	}

}
