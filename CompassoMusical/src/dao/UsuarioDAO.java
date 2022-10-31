package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import bean.Usuario;
import util.ConnectionFactory;

public class UsuarioDAO {
	
	public boolean checkLogin(String login, String senha) throws Exception {
		
		Connection conn = ConnectionFactory.getConnection();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		boolean check = false;
		
		try {
			stmt = conn.prepareStatement("SELECT * FROM tbusuario WHERE login = ? and senha = ?");
			stmt.setString(1, login);
			stmt.setString(2, senha);
			rs = stmt.executeQuery();
			
			if (rs.next()) {
				
				check = true;
				
			}
			
		} catch (SQLException ex) {
			Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			ConnectionFactory.closeConnection(conn, stmt, rs);
		}
		
		return check;
	}
			

}
