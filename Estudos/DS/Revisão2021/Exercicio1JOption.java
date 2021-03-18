import javax.swing.JOptionPane;

public class Exercicio1JOption {

	public static void main(String[] args) {
		double preco, desconto, total;
		
		preco = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o valor do produto"));
		desconto = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o desconto"));
		
		total = preco * (desconto / 100); 
		total = preco - total;
		
		JOptionPane.showMessageDialog(null,"Total a pagar R$ " + total +"\nDesconto de " + desconto + "%");
	}

}
