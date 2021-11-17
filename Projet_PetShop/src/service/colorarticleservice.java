package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.colorarticle;



public class colorarticleservice {
	Connection cnx;
	public  colorarticleservice() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/projetjee","root","");
			
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
	}
	
	public List<colorarticle> getcatg(){  //getcatg nom du methode
		
		List<colorarticle> lca =new ArrayList<colorarticle>();
		
		try {
			String req="select * from colorarticle";
			PreparedStatement st =cnx.prepareStatement(req);
			ResultSet rs=st.executeQuery();
			colorarticle ca;
			while (rs.next()) {
				ca= new colorarticle();
				ca.setIda(rs.getInt("ida"));
				ca.setIdco(rs.getInt("idco"));
				lca.add(ca);
				
			}
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
		return lca;
	}

}
