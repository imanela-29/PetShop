package service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.article;


public class articleservice {
	Connection cnx;
	public  articleservice() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/projetjee","root","");
			
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
	}
	
	public List<article> getart(){  //getcatg nom du methode
		
		List<article> la =new ArrayList<article>();
		
		try {
			String req="select * from article";
			PreparedStatement st =cnx.prepareStatement(req);
			ResultSet rs=st.executeQuery();
			article a;
			while (rs.next()) {
				a= new article();
				a.setIda(rs.getInt("ida"));
				a.setDesignation(rs.getString("designation"));
				a.setDetails(rs.getString("details"));
				a.setUrl_image(rs.getString("url_image"));
			//	a.setDatearticle(new Date(rs.getDate("datearticle").getTime()));
				a.setPrix(rs.getInt("prix"));
				a.setDescription(rs.getString("description"));
				a.setType(rs.getString("type"));
				a.setPromotion(rs.getString("promotion"));
				a.setId(rs.getInt("id"));
				
				
				la.add(a);
				
			}
		}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		return la;
	}
		public List<article> getnewart(){  //getcatg nom du methode
			
			List<article> la =new ArrayList<article>();
			
			try {
				String req="select * from article order by datearticle desc limit 3";
				PreparedStatement st =cnx.prepareStatement(req);
				ResultSet rs=st.executeQuery();
				article a;
				while (rs.next()) {
					a= new article();
					a.setIda(rs.getInt("ida"));
					a.setDesignation(rs.getString("designation"));
					a.setDetails(rs.getString("details"));
					a.setUrl_image(rs.getString("url_image"));
				//	a.setDatearticle(new Date(rs.getDate("datearticle").getTime()));
					a.setPrix(rs.getInt("prix"));
					a.setDescription(rs.getString("description"));
					a.setType(rs.getString("type"));
					a.setPromotion(rs.getString("promotion"));
					a.setId(rs.getInt("id"));
					
					
					la.add(a);
					
				}
			}
		catch ( Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		
		return la;
	}



public List<article> getpromo(){  //getcatg nom du methode
	
	List<article> la =new ArrayList<article>();
	
	try {
		String req="select * from article where promotion != 0 ";
		PreparedStatement st =cnx.prepareStatement(req);
		ResultSet rs=st.executeQuery();
		article a;
		while (rs.next()) {
			a= new article();
			a.setIda(rs.getInt("ida"));
			a.setDesignation(rs.getString("designation"));
			a.setDetails(rs.getString("details"));
			a.setUrl_image(rs.getString("url_image"));
		//	a.setDatearticle(new Date(rs.getDate("datearticle").getTime()));
			a.setPrix(rs.getInt("prix"));
			a.setDescription(rs.getString("description"));
			a.setType(rs.getString("type"));
			a.setPromotion(rs.getString("promotion"));
			a.setId(rs.getInt("id"));
			
			
			la.add(a);
			
		}
	}
catch ( Exception ex) {
	// TODO: handle exception
	ex.printStackTrace();
	
}

return la;
}





public article getarticle(int ida){  // nom du methode
	
	article a=null;
	
	try {
		String req="select * from article where ida = ? ";
		PreparedStatement st =cnx.prepareStatement(req);
		st.setInt(1, ida);
		ResultSet rs=st.executeQuery();
		
		while (rs.next()) {
			a= new article();
			a.setIda(rs.getInt("ida"));
			a.setDesignation(rs.getString("designation"));
			a.setDetails(rs.getString("details"));
			a.setUrl_image(rs.getString("url_image"));
		//	a.setDatearticle(new Date(rs.getDate("datearticle").getTime()));
			a.setPrix(rs.getInt("prix"));
			a.setDescription(rs.getString("description"));
			a.setType(rs.getString("type"));
			a.setPromotion(rs.getString("promotion"));
			a.setId(rs.getInt("id"));
			
			
			
			
		}
	}
    catch ( Exception ex) {
	    // TODO: handle exception
	    ex.printStackTrace();
	
    }

return a;
}
}




