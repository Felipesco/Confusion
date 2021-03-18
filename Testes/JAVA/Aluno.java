import java.util.Scanner;

public class Aluno {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in); 
		int i = 1;
		double nota1, nota2, media;
		
		while(i <= 5) {
			System.out.println("Entre com a 1° nota do "+i+"° Aluno: ");
			nota1 = leia.nextDouble();
			System.out.println("Entre com a 2° nota do "+i+"° Aluno: ");
			nota2 = leia.nextDouble();
			
			media = (nota1 + nota2) / 2;
			if (media < 6) {
				System.out.println("A media desse aluno é " +media+ ". Foi Reprovado!");
			}else {
				System.out.println("A media desse aluno é " +media+ ". Foi Aprovado!");
			}
			System.out.println(" "); //É para pular uma linha, me dá agonia ver tudo junto.
			i++;	
		}
		leia.close();
	}	
}
