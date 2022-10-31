package projeto.cadastro.aluno.view;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import dao.FinanceiroDAO;
import dao.UsuarioDAO;
import dao.ProfDAO;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class ViewLogin extends JFrame {

	private JPanel contentPane;
	private JTextField txtLogin;
	private JTextField txtSenha;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ViewLogin frame = new ViewLogin();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public ViewLogin() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		
		JLabel lblNewLabel = new JLabel("Login:");
		contentPane.add(lblNewLabel);
		
		txtLogin = new JTextField();
		contentPane.add(txtLogin);
		txtLogin.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Senha:");
		contentPane.add(lblNewLabel_1);
		
		txtSenha = new JTextField();
		contentPane.add(txtSenha);
		txtSenha.setColumns(10);
		
		JButton btnNewButton = new JButton("Entrar");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				UsuarioDAO dao = new UsuarioDAO();
				
				try {
					if(dao.checkLogin(txtLogin.getText(), txtSenha.getText())) {
						
						new Painel().setVisible(true);
						dispose();
						}
					
					else{
						ProfDAO dao1 = new ProfDAO();
						
						if(dao1.checkLogin(txtLogin.getText(), txtSenha.getText())) {
							
							 
							 new ViewProf().setVisible(true);
							 dispose();
						}
						else {FinanceiroDAO dao2 = new FinanceiroDAO();
						
						if(dao2.checkLogin(txtLogin.getText(), txtSenha.getText())) {
							
							 
							 new ViewProf().setVisible(true);
							 dispose();
							//JOptionPane.showMessageDialog(null, "Senha incorreta");
						} else {
							JOptionPane.showMessageDialog(null, "Senha incorreta");
						}
					  }
					}
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				};
				
			}
		});
		contentPane.add(btnNewButton);
	}

}
