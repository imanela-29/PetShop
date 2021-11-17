package Projet_PetShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProjetBer
 */
@WebServlet("/ProjetBer")
public class Projet_PetShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Projet_PetShop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//***************** AJOUTER dans la base de donnee*********
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/client","root","");
			//response.getWriter().write("Salut");
			String req="insert into client value(?,?,?,?)";
			PreparedStatement st =cnx.prepareStatement(req);
			
			st.setInt(1,Integer.parseInt(request.getParameter("txt1")));
			st.setString(2, request.getParameter("txt2"));
			st.setString(3, request.getParameter("txt3"));
			
		//la date
			SimpleDateFormat sd =new SimpleDateFormat("dd/mm/yyyy");
			Date d1 =sd.parse(request.getParameter("txt4"));
			st.setDate(4, new java.sql.Date(d1.getTime()));
			
			st.executeUpdate(); 
			
		} catch ( Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
	}

}
