package vista.recursos;

import java.awt.Font;

import javax.swing.JLabel;

public class EtiquetaNegrita extends JLabel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public EtiquetaNegrita(String texto) {
	    super(texto);
	    setFont(new Font("Arial", Font.PLAIN, 12));
	}

	public EtiquetaNegrita(String texto, int tam) {
	    super(texto);
	    setFont(new Font("Arial", Font.PLAIN, tam));
	}
}
