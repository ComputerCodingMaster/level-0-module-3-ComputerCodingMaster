import javax.swing.JOptionPane;

public class PrimeOrNot {

	public static void xmain(String[] args) {
		String inputstr = JOptionPane.showInputDialog(null, "Dame un numero por favor.");
		int input = Integer.parseInt(inputstr);
//input modulo 2.

		boolean isPrime = true;
		for (int i = 2; i < input; i++) {
			if (input % i == 0) {
				isPrime = false;
			}
		}
		if (isPrime == true) {
			JOptionPane.showMessageDialog(null, "Si es un numero primo.");
		} else {
			JOptionPane.showMessageDialog(null, "No es un numero primo.");

		}
	}
}

