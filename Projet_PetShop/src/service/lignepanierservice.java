package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import bean.lignepanier;

public class lignepanierservice {
	Connection cnx;
	public  lignepanierservice() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/projetjee","root","");
			
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
	}
	
	public List<lignepanier> getlig(){  //getcol nom du methode
		
		List<lignepanier> llp =new ArrayList<lignepanier>();
		
		try {
			String req="select * from lignepanier";
			PreparedStatement st =cnx.prepareStatement(req);
			ResultSet rs=st.executeQuery();
			lignepanier lp;
			while (rs.next()) {
				lp= new lignepanier();
				lp.setIdl(rs.getInt("idl"));
				lp.setQuantite(rs.getInt("quantite"));
				lp.setPrix(rs.getInt("prix"));
				lp.setIdp(rs.getInt("idp"));
				llp.add(lp);
				
			}
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
		return llp;
	}

}
