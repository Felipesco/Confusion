import java.util.Scanner;

public class FaixaEtaria {
	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		double faixa15 = 0, faixa30 = 0, faixa45 = 0, faixa60 = 0, faixa61 = 0, porcentagem = 0, idade;
		int i; //está fora do "for" para poder usar no ultimo println
		
		for ( i = 1; i < 16; i = i + 1) {
			System.out.println("Digite a idade da " +i+ "° pessoa: ");
			idade = leia.nextDouble();
			
			if (idade <= 15) {
				faixa15 = faixa15 + 1;

			} else if (idade <= 30) {
				faixa30 = faixa30 + 1;

			} else if (idade <= 45) {
				faixa45 = faixa45 + 1;

			} else if (idade <= 60) {
				faixa60 = faixa60 + 1;

			} else {
				faixa61 = faixa61 + 1;
			}
			
		}
		leia.close();
		
		porcentagem = (100 * faixa15) / 15;
		System.out.println("Até 15 anos, temos o total de " +faixa15+ " pessoas. Igual a " +porcentagem+ "% do geral;");
		
		porcentagem = (100 * faixa30) / 15;
		System.out.println("De 16 a 30 anos, temos o total de " +faixa30+ " pessoas. Igual a " +porcentagem+ "% do geral;");
		
		porcentagem = (100 * faixa45) / 15;
		System.out.println("De 31 a 45 anos, temos o total de " +faixa45+ " pessoas. Igual a " +porcentagem+ "% do geral;");
		
		porcentagem = (100 * faixa60) / 15;
		System.out.println("De 46 a 60 anos, temos o total de " +faixa60+ " pessoas. Igual a " +porcentagem+ "% do geral;");
		
		porcentagem = (100 * faixa61) / 15;
		System.out.println("E acima de 61 anos, temos o total de " +faixa61+ " pessoas. Igual a " +porcentagem+ "% do geral.");
		
		System.out.println("Total de pessoas: " +(i-1)+ ".");
	}
}