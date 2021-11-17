<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String Idc="";
String Nom="";
String Prenom="";
String datedenaissance="";
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/client","root","");
	//response.getWriter().write("Salut");
	String req="Select * from client where Idc=?";
	PreparedStatement st =cnx.prepareStatement(req);
	st.setInt(1,Integer.parseInt(request.getParameter("hidd").trim()));
	ResultSet rs = st.executeQuery(); //executequery--->select //un tableau-->resultset
	if(rs.next())
	{
		Idc=rs.getString("Idc");
		Nom=rs.getString("Nom");
		Prenom=rs.getString("Prenom");
		datedenaissance=rs.getString("Date de naissance");
	
	}
	
	
	
	
	
} catch ( Exception e) {
	// TODO: handle exception
	e.printStackTrace();
}
%>
<form action="infoclient.jsp" method="get">

<br>
<div>
<label style="color:black ;padding-bottom: 50px;" for="name">IDClient</label>
 <input type="text" name="txt1" value="<%= Idc %>"/><br>
 <br>
 <label style="color:black ;padding-bottom: 50px;" for="name">Nom</label>
 <input type="text" name="txt2" value="<%= Nom %>"/><br>
 <br>
 <label style="color:black ;padding-bottom: 50px;" for="name">Prénom</label>
 <input type="text" name="txt3" value="<%= Prenom %>" /><br>
 <br>
 <label style="color:black ;padding-bottom: 50px;" for="name">Date de naissance</label>
 <input type="text" name="txt4" value="<%= datedenaissance %>" /><br>
 
 <input type="submit" value="envoyer le formulaire">
 </div>
   </form>

</body>
</html>