import java.util.Scanner;
public class Tabuada {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 0, numero, resultado;
		
		System.out.println("Digite o numero para obter sua tabuada: ");
		numero = leia.nextInt();
		
		do {
			resultado = numero * i;
			System.out.println(numero+ " x " +i+ " = " + resultado);
			i++;
		} while (i <= 10);
		leia.close();
	}

}
