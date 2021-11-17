package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import bean.utilisateur;
import service.utilisateurservice;

/**
 * Servlet implementation class servinscrire
 */
@WebServlet("/servinscrire")
public class servinscrire extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servinscrire() {
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
		
		utilisateur u= new utilisateur();
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setEmail(request.getParameter("email"));
		u.setPhone(request.getParameter("phone"));
		u.setCompany(request.getParameter("company"));
		u.setAdress(request.getParameter("adress"));
		
		utilisateurservice us= new utilisateurservice();
		us.inscrire(u);
		response.sendRedirect("register.jsp");
		
		
	}
	
	

}
