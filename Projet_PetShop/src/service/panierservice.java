package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import bean.panier;

public class panierservice {
	Connection cnx;
	public  panierservice() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/projetjee","root","");
			
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
	}
	
	public List<panier> getpan(){  //getcol nom du methode
		
		List<panier> lp =new ArrayList<panier>();
		
		try {
			String req="select * from panier";
			PreparedStatement st =cnx.prepareStatement(req);
			ResultSet rs=st.executeQuery();
			panier p;
			while (rs.next()) {
				p= new panier();
				p.setIdp(rs.getInt("idp"));
				p.setDate_commande(rs.getString("date_commande"));
				p.setIdu(rs.getInt("idu"));
				
				lp.add(p);
				
			}
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
		return lp;
	}

}
