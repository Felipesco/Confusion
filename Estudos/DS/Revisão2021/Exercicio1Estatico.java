import java.util.Scanner;
import javax.swing.JOptionPane;

public class Exercicio1Estatico{

	public static void main(String[] args) {
		
		double preco, desconto, total;
		Scanner in = new Scanner(System.in);
		
		System.out.println("Digite o pre�o do produto ");
		preco = in.nextDouble();
		
		System.out.println("Digite o desconto ");
		desconto = in.nextDouble();
		
		in.close();
		
		total = preco * (desconto / 100); 
		total = preco - total;
		
		if(total == 0){
			System.out.println("Com esse desconto fica de Gra�a!!");
		}
		else {
			System.out.println("Total a pagar R$ " + total);
		}
	}
}
