package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import bean.color;

public class colorservice {
	Connection cnx;
	public  colorservice() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/projetjee","root","");
			
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
	}
	
	public List<color> getcol(){  //getcol nom du methode
		
		List<color> lco =new ArrayList<color>();
		
		try {
			String req="select * from color";
			PreparedStatement st =cnx.prepareStatement(req);
			ResultSet rs=st.executeQuery();
			color co;
			while (rs.next()) {
				co= new color();
				co.setIdco(rs.getInt("idco"));
				co.setCouleur(rs.getString("libelle"));
				lco.add(co);
				
			}
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
		return lco;
	}

}
