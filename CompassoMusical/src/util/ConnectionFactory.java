package util;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;



public class ConnectionFactory {

	
		
		
		
		public static Connection getConnection() throws Exception{
			try {
				
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				
				String url = "jdbc:mysql://localhost:3306/dbMuical";
				String login ="root";
				String senha = "";
				
				
				return DriverManager.getConnection(url,login,senha);
				
							
			}
			catch (Exception erro) {
				
				
				throw new Exception (erro.getMessage());
				
			}
		}
			
			public static void main(String arg[]) {
				
				try {
					
					Connection conn = ConnectionFactory.getConnection();
					
					/* mensagem no console e em um popup*/
					JOptionPane.showMessageDialog(null,"Conectado");
					System.out.print("Conectado");
					
				}
				catch (Exception erro) {
					
					erro.printStackTrace();
				}			
			}


}
