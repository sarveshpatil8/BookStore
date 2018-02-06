<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.*, com.book.pojo.*" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Book Store Template, Free CSS Template, CSS Website Layout</title>
<meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML" />
<meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--  Free CSS Templates from www.templatemo.com -->
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
          <li><a href="index.jsp" class="current">Home</a></li>
            <li><a href="#">New Releases</a></li>          
            <li><a href="Registration.jsp">Registration</a></li> 
            <li><a href="#">Company</a></li>  
            <li><a href="#">Contact</a></li>
            <li><a href="LogoutServlet">Log Out</a></li>
            
            <% 
if(session.getAttribute("user")!=null)
	
{
%>

	<li>welcome <%=session.getAttribute("user")%></li>
	
<%
}
%>
			<li><a href="Cart">Shopping Cart</a></li>
    	</ul>
    </div> <!-- end of menu -->
    
    <div id="templatemo_header">
    	
    </div> <!-- end of header -->
    
    <div id="templatemo_content">
    	
        <div id="templatemo_content_left">
        	<div class="templatemo_content_left_section">
            	<h1>Categories</h1>
                <ul>
                    <li><a href="CategoryDisplay?catvalue=Literature">Literature</a></li>
                    <li><a href="CategoryDisplay?catvalue=Fiction">Fiction</a></li>
                    <li><a href="CategoryDisplay?catvalue=Mystery">Mystery</a></li>
                    <li><a href="CategoryDisplay?catvalue=Thriller">Thriller</a></li>
                    <li><a href="CategoryDisplay?catvalue=Romance">Romance</a></li>
                    <li><a href="CategoryDisplay?catvalue=Drama">Drama</a></li></a></li>
            	</ul>
            </div>
			<div class="templatemo_content_left_section">
            	
            </div>
            
            <div class="templatemo_content_left_section">                
                </div>
        </div> 
        <div id="templatemo_content_right">
       
<h1><center>My Order Details</center></h1>
<h1><center><%=new Date() %></center></h1>
<%String message=request.getParameter("msg");
if(message==null)
	message="";
else
	message="INcorrect Quantity";

%>
<label style="color:red; fontsize:18px; ">
<%=message %>
</label>

<table border="5" align="center" cellpadding="5" cellspacing="5">


<th>Name</th>
<th>Author</th>
<th>Price</th>
<th>Qauntity</th>
<th>Total</th>
<th>Order Date</th>
<c:forEach var="OrderMaster" items="${OrderDetailsListByUser}">

	<tr>
		
		<td>${OrderMaster.name}</td>
		<td>${OrderMaster.author}</td>
		<td>${OrderMaster.price}</td>
		<td>${OrderMaster.quantity}</td>
		<td>${OrderMaster.total}</td>
		<td>${OrderMaster.orderDate}</td>
		
	</tr>
		
</c:forEach>



</table>

<br>
<br>
<a href="index.jsp">Back To Home</a>


    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       <a href="subpage.html">Home</a> | <a href="subpage.html">Search</a> | <a href="subpage.html">Books</a> | <a href="#">New Releases</a> | <a href="#">FAQs</a> | <a href="#">Contact Us</a><br />
        Copyright © 2048 <a href="#"><strong>Your Company Name</strong></a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent" title="free css templates">Free CSS Templates</a>	</div> 
    <!-- end of footer -->
<!--  Free CSS Template www.templatemo.com -->
</div> <!-- end of container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>