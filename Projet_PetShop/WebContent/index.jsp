<%@page import="bean.article"%>
<%@page import="service.articleservice"%>
<%@page import="bean.categorie"%>
<%@page import="java.util.List"%>
<%@page import="service.categorieservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
          
          
        <jsp:include page="menu.jsp" ></jsp:include>   
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
        	
        
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Featured pets</div>
         
         <%
           articleservice arts= new articleservice();
           List<article> lart= arts.getnewart();
           for(article a:lart)
           {
           
           %>
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><a href="details.jsp"><img src="imageprod/<%=a.getUrl_image() %>" height="87" width="93" alt="" title="" border="0" /></a></div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title"><%=a.getDesignation() %></div>
                    <p class="details"><%=a.getDetails() %> </p>
                    <a href="details.jsp" class="more">- more details -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            
            
        	   <%
           }
        	   %>  
            
            
            
           <div class="title"><span class="title_icon"><img src="images/bullet2.gif" alt="" title="" /></span>New pets</div> 
           
           <div class="new_products">
           <%
           articleservice as= new articleservice();
           List<article> la= as.getnewart();
           for(article a:la)
           {
           
           %>
                    <div class="new_prod_box">
                        <a href="details.jsp"><%=a.getDesignation() %></a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                        <a href="details.jsp"><img src="imageprod/<%=a.getUrl_image() %>" height="87" width="93" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    
            
          <%} %>
            </div> 
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
        	<div class="languages_box">
            <span class="red">Languages:</span>
            <a href="#" class="selected"><img src="images/gb.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a>
            </div>
                <div class="currency">
                <span class="red">Currency: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#" class="selected">USD</a>
                </div>
                
                
              <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart</div>
                  <div class="home_cart_content">
                  3 x items | <span class="red">TOTAL: 100$</span>
                  </div>
                  <a href="cart.jspl" class="view_cart">view cart</a>
              
              </div>
                       
            	
        
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Shop</div> 
             <div class="about">
             <p>
             <img src="images/animal.png"  height="87" width="133" alt="" title="" class="right" />
             PetShop est une plateforme de commerce électronique en ligne. Cette boutique de vente en ligne propose à ses clients une large variété d'articles, à des prix réduits et pas chers.
             </p>
             
             </div>
             
             
        <div class="right_box">
             
             	<jsp:include page="promotion.jsp" ></jsp:include>          
             
             </div>
             
             <div class="right_box">
             
             	 
                
                <jsp:include page="categorie.jsp" ></jsp:include>
                
             	<div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>Partners</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>                              
                </ul>      
             
             </div>         
                 
             
        
        
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <jsp:include page="footer.jsp" ></jsp:include>
    

</div>

</body>

</html>