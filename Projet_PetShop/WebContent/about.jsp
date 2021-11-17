<%@page import="java.util.List"%>
<%@page import="bean.about"%>
<%@page import="service.aboutservice"%>
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
       	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>About us</div>
        
        	<div class="feat_prod_box_details">
        	
            <p class="details">
     <img src="images/animal.png"  height="107" width="203" alt="" title="" class="right" /> 
           PetShop est une plateforme de commerce électronique en ligne. Cette boutique de vente en ligne propose à ses clients une large variété d'articles, à des prix réduits et pas chers.<br /><br />  
       Avoir un animal dans sa vie signifie avoir de la compagnie.<br /> Votre chien ou votre chat sera toujours là pour vous, sans vous juger sans porter de jugement sur ce que vous faites. Ils ont un amour inconditionnel envers leurs maîtres.<br /><br /><br />
Les animaux peuvent être tout particulièrement des bons compagnons pour les enfants. Si un enfant a des difficultés à s'exprimer devant une personne, il le fera plus facilement devant son chien ou son chat. Les enfants ont cette réaction car ils voient les animaux de compagnie comme leurs pairs et non juste un animal.
De plus les enfants qui ont grandi avec un animal à la maison sont moins sensibles à différentes allergies comme l'asthme ou l'eczéma.<br /><br /><br />
Avoir un animal de compagnie est très positif. Votre chien ou votre chat sera toujours la pour vous mettre de bonne humeur.  En effet ils sont affectueux et ne veulent qu'une chose c'est que vous soyez heureux.<br /><br /><br />
Les animaux de compagnie peuvent également préserver votre santé. Beaucoup de gens qui sont stressés, triste ou en colère pendant une période sont susceptibles d'avoir des problèmes de santé. Et comme les chiens ou les chats apaisent, les propriétaires d'animaux souffrent moins de maladies cardiaques.
De même pour les personnes qui ont eu une crise cardiaque vivront plus longtemps si elles possèdent des animaux, surtout un chien, car elles sont obligés de faire un d'exercice pour promener leur chien ou pour jouer avec.        
            </p>
            
            
            </div>	
            
              

            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
        
                	<div class="languages_box">
            <span class="red">Languages:</span>
            <a href="#"><img src="images/gb.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a>
            </div>
                <div class="currency">
                <span class="red">Currency: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#"><strong>USD</strong></a>
                </div>
                
                
              <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart</div>
                  <div class="home_cart_content">
                  3 x items | <span class="red">TOTAL: 100$</span>
                  </div>
                  <a href="cart.jsp" class="view_cart">view cart</a>
              
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
       
              
       <div class="footer">
       	<div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> <a href="http://csscreme.com/freecsstemplates/" title="free css templates"><img src="images/csscreme.gif" alt="free css templates" border="0" /></a></div>
        <div class="right_footer">
        <a href="#">home</a>
        <a href="#">about us</a>
        <a href="#">services</a>
        <a href="#">privacy policy</a>
        <a href="#">contact us</a>
       
        </div>
        
       
       </div>
    

</div>

</body>
</html>