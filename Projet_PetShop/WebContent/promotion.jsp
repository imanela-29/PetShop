<%@page import="java.util.List"%>
<%@page import="bean.article"%>
<%@page import="service.articleservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <div class="right_box">
             
              
           
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
           <%
           articleservice ars= new articleservice();
           List<article> lar= ars.getpromo();
           for(article a:lar)
           {
           
           %>
                    <div class="new_prod_box">
                   
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.jsp?ida=<%=a.getIda() %>"><img src="imageprod/<%=a.getUrl_image() %>" height="87" width="93" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
             <%
               }
              %>                    
             
             </div>