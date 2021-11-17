<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">pets</a></li>
            <li><a href="specials.jsp">specials pets</a></li>
      <%
      if(session.getAttribute("idu")==null ){ 
      
      %>      
         
            <li><a href="myaccount.jsp">my accout</a></li>
            <li><a href="register.jsp">register</a></li>
            
            
       <%
      }
      else{
       %> 
           <li><a href="logout">logout</a></li>

        <%
      }
        %>
   
            <li><a href="details.jsp">prices</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>   