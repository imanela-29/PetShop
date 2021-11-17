package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.panier;
import bean.utilisateur;

public class utilisateurservice {
	Connection cnx;
	public  utilisateurservice() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/projetjee","root","");
			
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
	}
	
	public void inscrire (utilisateur u) {

		try {
			String req="insert into utilisateur(username, password, email, phone, company, adress) value(?,?,?,?,?,?);";
			PreparedStatement st =cnx.prepareStatement(req);
	
			st.setString(1, u.getUsername());
			st.setString(2, u.getPassword());
			st.setString(3, u.getEmail());
			st.setString(4, u.getPhone());
			st.setString(5, u.getCompany());
			st.setString(6, u.getAdress());
				
			st.executeUpdate();
				
			
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
		
	}

	
	public utilisateur seconnecter(String username, String password) {
		
		utilisateur u= null;
		
		try {
			
		String req = "select * from utilisateur where username=? and password=?";
		PreparedStatement st =cnx.prepareStatement(req);
		
		st.setString(1, username);
		st.setString(2, password);
		
		ResultSet rs=st.executeQuery();
		
		if(rs.next()) {
			u = new utilisateur();
			u.setUsername(rs.getString("username"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setPhone(rs.getString("phone"));
			u.setCompany(rs.getString("company"));
			u.setAdress(rs.getString("adress"));
		          }
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
	
		}
		return u;
}
}