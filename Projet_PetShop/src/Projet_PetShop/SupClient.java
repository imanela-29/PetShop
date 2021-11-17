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
 * Servlet implementation class Supclient
 */
@WebServlet("/Supclient")
public class SupClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/client","root","");
			//response.getWriter().write("Salut");
			String req="delete from client where Idc=?";
			PreparedStatement st =cnx.prepareStatement(req);
			
			st.setInt(1,Integer.parseInt(request.getParameter("hidd").trim()));
			
			st.executeUpdate();
			
			
		} catch ( Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
        
        response.sendRedirect("tableau.jsp");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	}


