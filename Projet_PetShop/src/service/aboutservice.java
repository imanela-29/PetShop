package service;


	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.util.ArrayList;
	import java.util.List;

import bean.about;
import bean.article;
import bean.categorie;

	public class aboutservice {
		Connection cnx;
		public  aboutservice() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/projetjee","root","");
				
			}
			catch ( Exception ex) {
				// TODO: handle exception
				ex.printStackTrace();
				
			}
			
		}
		
		public about getabout(int idab){  //getabout nom du methode
			
			about ab =null;
			
			try {
				String req="select * from about where idab = ? ";
				PreparedStatement st =cnx.prepareStatement(req);
				st.setInt(1, idab);
				ResultSet rs=st.executeQuery();
				//about a;
				while (rs.next()) {
					ab= new about();
					ab.setIdab(rs.getInt("idab"));
					ab.setDesignation(rs.getString("designation"));
					ab.setImage(rs.getString("image"));
					
					
				}
			}
			catch ( Exception ex) {
				// TODO: handle exception
				ex.printStackTrace();
				
			}
			
			return ab;
		}

	}


