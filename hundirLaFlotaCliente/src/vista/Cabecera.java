package vista;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;

import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import vista.recursos.EtiquetaNegrita;


public class Cabecera extends JPanel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JLabel titulo;
//	private VentanaPrincipal p;
	private EtiquetaNegrita reto = new EtiquetaNegrita("Desafio pendientes");

	public Cabecera(VentanaPrincipal p) {
		super();
//		this.p = p;
		setPreferredSize(new Dimension(1080, 120));
		setBackground(new Color(135,238,234));
		setLayout(new BorderLayout());

		titulo = new JLabel("Hundir La Flota");
		titulo.setFont(new Font("Arial", Font.PLAIN, 35 | Font.BOLD));
		titulo.setForeground(Color.BLACK);
		titulo.setHorizontalAlignment(SwingConstants.CENTER);

		add(titulo, BorderLayout.CENTER);

		EtiquetaNegrita jugador = new EtiquetaNegrita(p.conexion.getGJ().getJugador().toUpperCase());
		jugador.setBorder(new EmptyBorder(0, 40, 0, 0));
		add(jugador, BorderLayout.WEST);

		reto.setForeground(new Color(0, 0, 0, 0));
		reto.setBorder(new EmptyBorder(0, 0, 0, 20));
		add(reto, BorderLayout.EAST);
		
		p.conexion.getGJ().setVistaCabecera(this);
	}

	public void mostrarRetos(boolean hayRetos) {
		if (hayRetos) {
			reto.setForeground(Color.RED);
		} else {
			reto.setForeground(new Color(0, 0, 0, 0));
		}
	}
}
