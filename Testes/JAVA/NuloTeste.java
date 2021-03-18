import java.util.Scanner;

public class NuloTeste {
	public static void main(String[] args) {
		
		int dia;
		Scanner leia = new Scanner(System.in);
		
		System.out.print("Que dia é hoje?  R: "); 
		dia = leia.nextInt();
		
		switch (dia) {
		  case 1:
		    System.out.println("Segunda");
		    break;
		  case 2:
		    System.out.println("Terça");
		    break;
		  case 3:
		    System.out.println("Quarta");
		    break;
		  case 4:
		    System.out.println("Quinta");
		    break;
		  case 5:
		    System.out.println("Sexta");
		    break;
		  case 6:
		    System.out.println("Sábado");
		    break;
		  case 7:
		    System.out.println("Domingo");
		    break;
		    
		}
		leia.close();
	}
}
