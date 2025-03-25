package vista.recursos;

import java.awt.Font;

import javax.swing.JLabel;

public class EtiquetaCoordenadas extends JLabel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public EtiquetaCoordenadas(String texto) {
		super(texto);
		setFont(new Font("Arial", Font.PLAIN, 18));
	}
	
	public EtiquetaCoordenadas(String texto, int tam) {
		super(texto);
		setFont(new Font("Arial", Font.PLAIN, tam));
	}
}
