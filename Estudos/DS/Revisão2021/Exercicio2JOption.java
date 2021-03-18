import javax.swing.JOptionPane;

public class Exercicio2JOption {

	public static void main(String[] args) {
		int escolhas, dias;
		double total = 0;
		
		escolhas = Integer.parseInt(JOptionPane.showInputDialog(null, "Viajar para Ilhabela. Digite: 1 \nViajar para Fernando de Noronha. Digite: 2"));
		dias = Integer.parseInt(JOptionPane.showInputDialog(null, "Quantos dias serão? "));
		
		if(dias != 0 && dias != 1){
			switch(escolhas){
				case 1:
					if(dias >= 2 && dias <= 5) {
						total = dias * 240;
					}
					else if(dias >= 6 && dias <= 10){
						total = (dias * 220) + 130;
					}
					else if(dias > 10){
						total = (dias * 210) + 150;
					}
					JOptionPane.showMessageDialog(null, "Essa viagem vai sair por apenas R$ " + total);
				break;
				
				case 2:				
					if(dias >= 2 && dias <= 5) {
						total = (dias * 400) + 100;
					}
					else if(dias >= 6 && dias <= 10){
						total = (dias * 410) + 150;
					}
					else if(dias > 10){
						total = (dias * 420) + 200;
					}
					JOptionPane.showMessageDialog(null, "Essa viagem vai sair por apenas R$ " + total);
				break;
				
			}
		} 
		else{
			JOptionPane.showMessageDialog(null, "\nNão temos essa opção. \nEscolha 2 dias ou mais.");
		}
	}

}