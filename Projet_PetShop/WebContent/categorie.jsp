<%@page import="java.util.List"%>
<%@page import="bean.categorie"%>
<%@page import="service.categorieservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 
                
                <ul class="list">
                <%
                categorieservice cs= new categorieservice();
                List<categorie> lc = cs.getcatg();
                for(categorie c:lc)
                {
                
                %>
                <li><a href="category.jsp?id=<%=c.getId() %>&libelle=<%=c.getLibelle() %>"><%=c.getLibelle() %></a></li> 
                <%
                }
                %>                                             
                </ul>
                
             	
             
             </div>         
 
            