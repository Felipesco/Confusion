import java.util.Scanner;

public class Exercicio3Estatico {

  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);

    int meses = 12, i;
    int salario[] = new int[meses];  

    for (i=0; i<meses; i++) {
      System.out.printf("Digite o valor do %2do sal�rio: R$ ", (i+1));
      salario[i] = in.nextInt();
    }
    
	in.close();

	int menor = salario[0], maior = salario[0], soma = 0;
    
    for (i=0; i<meses; i++) {
      soma = soma + salario[i];

      if (salario[i] < menor) {
         menor = salario[i];
      }
      if (salario[i] > maior) {
         maior = salario[i];
      }
    }

    System.out.printf("\n");
    
    for (i=0; i<meses; i++) {
      if (salario[i] == menor) {
    	  System.out.printf("v[%d] = %2d <--- menor sal�rio\n", i, salario[i]);
      }
      else if (salario[i] == maior) {
          System.out.printf("v[%d] = %2d <--- maior sal�rio\n", i, salario[i]);
      }
      else {
         System.out.printf("v[%d] = %2d\n", i, salario[i]);
      }
    }

    System.out.printf("\nSoma R$ %d\n", soma);
    System.out.printf("\n M�dia � R$ " + (soma/12));
    
  }

}
