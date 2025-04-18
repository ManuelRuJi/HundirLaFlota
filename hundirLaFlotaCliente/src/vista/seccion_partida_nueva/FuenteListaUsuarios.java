package vista.seccion_partida_nueva;

import java.awt.Component;
import java.awt.Font;

import javax.swing.DefaultListCellRenderer;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.border.EmptyBorder;

public class FuenteListaUsuarios extends DefaultListCellRenderer {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    public Component getListCellRendererComponent(JList<?> list, Object value, int index, boolean isSelected, boolean cellHasFocus) {
        
		JLabel label = (JLabel) super.getListCellRendererComponent(list, value, index, isSelected, cellHasFocus);
		
		EmptyBorder borde = new EmptyBorder(5, 20, 0, 0);

        // Aplicar el borde al JLabel
        label.setBorder(borde);
        
        label.setFont(new Font("Arial", Font.PLAIN, 12));
        

        return label;
    }
}

