import javax.swing.JOptionPane;

public class PrimeOrNot {

	public static void main(String[] args) {
String inputstr = JOptionPane.showInputDialog(null, "Dame un numero por favor");
int input =Integer.parseInt(inputstr);
//input modulo 2.
for(int i=2;i<input;i++) {
if (input%i==0) {
JOptionPane.showMessageDialog(null,"No es un numero primo");
} else {
JOptionPane.showMessageDialog(null,"Si es un numero primo");

}
}
	}
}
