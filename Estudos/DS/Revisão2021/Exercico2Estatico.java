import java.util.Scanner;

public class Exercico2Estatico {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int escolha, dias;
		double total = 0;
		
		System.out.println("Viajar para Ilhabela. Digite: 1 \nViajar para Fernando de Noronha. Digite: 2");
		escolha = in.nextInt();
		
		System.out.println("Quantos dias serão");
		dias = in.nextInt();
		
		in.close();

		if(dias != 0 && dias != 1){
			switch(escolha){
				case 1:
					if(dias >= 2 && dias <= 5) {
						total = dias * 240;
					}
					else if(dias >=6 && dias <= 10){
						total = (dias * 220) + 130;
					}
					else if(dias > 10){
						total = (dias * 210) + 150;
					}
					System.out.println("Essa viagem vai sair por apenas R$ " + total);
				break;
				
				case 2:				
					if(dias >= 2 && dias <= 5) {
						total = (dias * 400) + 100;
					}
					else if(dias >=6 && dias <= 10){
						total = (dias * 410) + 150;
					}
					else if(dias > 10){
						total = (dias * 420) + 200;
					}
					System.out.println("\nEssa viagem vai sair por apenas R$ " + total);
				break;
				
			}
		} 
		else{
			System.out.println("\nNão temos essa opção. \nEscolha 2 dias ou mais.");
		} 
		
	}
}
