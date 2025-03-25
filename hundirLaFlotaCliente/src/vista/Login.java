package vista;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

import cliente.ConexionConServidor;
import vista.recursos.Boton;
import vista.recursos.EtiquetaNegrita;

public class Login {
	
	
	public Login() {
		
		// ventana
		JFrame ventana = new JFrame();
		JPanel contenido = new JPanel(new BorderLayout());

		// arriba
		JPanel contT = new JPanel(new GridBagLayout());
		contT.setPreferredSize(new Dimension(500, 200));
		contT.setBackground(new Color(135,238,234));
		EtiquetaNegrita titulo = new EtiquetaNegrita("Login", 30);
		titulo.setHorizontalAlignment(SwingConstants.CENTER);
		contT.add(titulo);
		contenido.setBackground(new Color(135,238,234));
		contenido.add(contT, BorderLayout.NORTH);

		// centro
		JPanel centro = new JPanel(new GridBagLayout());
		JLabel nombre = new JLabel("Nombre");
		GridBagConstraints gbc_nombre = new GridBagConstraints();
		gbc_nombre.anchor = GridBagConstraints.EAST;
		gbc_nombre.insets = new Insets(0, 0, 5, 5);
		gbc_nombre.gridx = 2;
		gbc_nombre.gridy = 0;
		centro.setBackground(new Color(135,238,234));
		centro.add(nombre, gbc_nombre);

		JTextField nombreEntrada = new JTextField();
		nombreEntrada.setPreferredSize(new Dimension(200, 20));
		GridBagConstraints gbc_nombreValor = new GridBagConstraints();
		gbc_nombreValor.fill = GridBagConstraints.HORIZONTAL;
		gbc_nombreValor.insets = new Insets(0, 0, 5, 0);
		gbc_nombreValor.gridx = 3;
		gbc_nombreValor.gridy = 0;
		centro.add(nombreEntrada, gbc_nombreValor);

		JLabel contra = new JLabel("Contraseña");
		GridBagConstraints gbc_contra = new GridBagConstraints();
		gbc_contra.anchor = GridBagConstraints.EAST;
		gbc_contra.insets = new Insets(0, 0, 5, 5);
		gbc_contra.gridx = 2;
		gbc_contra.gridy = 1;
		centro.add(contra, gbc_contra);
		JPasswordField contraEntrada = new JPasswordField();
		contraEntrada.setPreferredSize(new Dimension(200, 20));
		GridBagConstraints gbc_contraValor = new GridBagConstraints();
		gbc_contraValor.fill = GridBagConstraints.HORIZONTAL;
		gbc_contraValor.insets = new Insets(0, 0, 5, 0);
		gbc_contraValor.gridx = 3;
		gbc_contraValor.gridy = 1;
		centro.add(contraEntrada, gbc_contraValor);

		contenido.add(centro, BorderLayout.CENTER);

		// abajo
		JPanel abajo = new JPanel(new GridBagLayout());
		abajo.setPreferredSize(new Dimension(500, 200));
		abajo.setBackground(new Color(135,238,234));
		Boton ok = new Boton("Enviar");
		GridBagConstraints gbc_ok = new GridBagConstraints();
		gbc_ok.insets = new Insets(0, 0, 0, 5);
		gbc_ok.gridx = 1;
		gbc_ok.gridy = 2;
		abajo.add(ok, gbc_ok);
		ventana.getContentPane().add(contenido);
		ventana.getRootPane().setDefaultButton(ok); // preseleciona el botón

		contenido.add(abajo, BorderLayout.SOUTH);

		// Configurar el tamaño del marco y hacerlo visible
		ventana.setSize(500, 600);
		ventana.setVisible(true);
		ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// acciones
		ok.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				String contraValor = new String(contraEntrada.getPassword());
				String nombreValor = nombreEntrada.getText();
				if (contraValor.equalsIgnoreCase("") || nombreValor.equalsIgnoreCase("")) {
					JOptionPane.showMessageDialog(ventana, "Usuario y contraseña OBLIGATORIOS", "Error",
							JOptionPane.ERROR_MESSAGE);
					return;
				}
				ConexionConServidor conexion = new ConexionConServidor(nombreValor, contraValor);
				if(conexion.getVerificada().equals("ok")) {
					conexion.start();
					ventana.dispose();	
					JOptionPane.showMessageDialog(ventana, "Bienvenido "+nombreValor, "", JOptionPane.INFORMATION_MESSAGE);
					new VentanaPrincipal(conexion);
				}else if(conexion.getVerificada().equals("jugadorYaConectado")) {
					JOptionPane.showMessageDialog(ventana, "Usuario introducido ya está conectado", "Error", JOptionPane.ERROR_MESSAGE);
				}else if(conexion.getVerificada().equals("servidorCompleto")) {
					JOptionPane.showMessageDialog(ventana, "No se pudo realizar la conexión, inténtelo más tarde", "Error", JOptionPane.ERROR_MESSAGE);
				}else {
					JOptionPane.showMessageDialog(ventana, "Usuario o contraseña incorrecto", "Error", JOptionPane.ERROR_MESSAGE);
				}
				contraEntrada.setText("");
				nombreEntrada.setText("");
			}
		});

	}
	
	public static void main(String[] args) {
		new Login();
	}
}
