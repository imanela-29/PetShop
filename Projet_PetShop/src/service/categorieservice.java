package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.categorie;

public class categorieservice {
	Connection cnx;
	public  categorieservice() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/projetjee","root","");
			
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
	}
	
	public List<categorie> getcatg(){  //getcatg nom du methode
		
		List<categorie> lc =new ArrayList<categorie>();
		
		try {
			String req="select * from categorie";
			PreparedStatement st =cnx.prepareStatement(req);
			ResultSet rs=st.executeQuery();
			categorie c;
			while (rs.next()) {
				c= new categorie();
				c.setId(rs.getInt("id"));
				c.setLibelle(rs.getString("libelle"));
				lc.add(c);
				
			}
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
		return lc;
	}

}
