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



<table border="2">
<tr>
<th> ID client</th>
<th>Nom </th>
<th>Prénom </th>
<th>Date de naissance </th>
<th> 
</tr>
<%
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/client","root","");
	//response.getWriter().write("Salut");
	String req="Select * from client";
	PreparedStatement st =cnx.prepareStatement(req);
	ResultSet rs = st.executeQuery(); //executequery--->select //un tableau-->resultset
	while(rs.next())
	{
		%>
		<tr>
		<td> <%=rs.getInt("Idc") %></td> 
		<td> <%=rs.getString("Nom") %></td> 
		<td> <%=rs.getString("Prenom") %></td> 
		<td> <%=rs.getDate("Date de naissance") %></td> 
		
		<td>
		<form action="Supclient" method="post">
		   <input type="hidden" name="hidd" value="<%=rs.getInt("Idc")%>" />
		   <input type="submit" value="supprimer" />
		</form>
		</td>
		
		<td>
		<form action="infoclient.jsp" method="post">
		   <input type="hidden" name="hidd" value="<%=rs.getInt("Idc")%>" />
		   <input type="submit" value="Modifier" />
		</form>
		</td>
		
		</tr>
		<% 
	
	}
	
	
	
	
	
} catch ( Exception e) {
	// TODO: handle exception
	e.printStackTrace();
}
%>
</table>
</body>
</html>