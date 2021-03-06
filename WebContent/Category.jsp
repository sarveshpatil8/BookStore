<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.*, com.book.pojo.*" %>
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
            <li><a href="About us.html">Company</a></li>  
            <li><a href="ContactUs.html">Contact</a></li>
            <li><a href="LogoutServlet">Log Out</a></li>
            
            <% 
if(session.getAttribute("user")!=null)
	
{
%>

	<li>welcome <%=session.getAttribute("user")%></li>
	
<%
}
%>
			<%
			if(session.getAttribute("usertype")=="user")
			{%>
			<li><a href="AddToCartServlet">Shopping Cart</a></li>
			<%}
			 %>
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
            	
                    
            	</ul>
            </div>
            
            <div class="templatemo_content_left_section">                
                
			</div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        
        <%
        List list=(List)session.getAttribute("booklistCat");
        if(list!=null && list.size()>0)
        {
        	for(int i=0;i<list.size();i++)
        	{
        		Book b=(Book)list.get(i);
        %>
        <% 
            if(i%2==0)
            { %>
        	<div class="templatemo_product_box">
            	<h1><%= b.getName() %> <span><%= b.getAuthor()%></span></h1>
   	      <img src="<%=b.getImage() %>" alt="image"  width="100" height="100"/>
                <div class="product_info">
                	<p><%=b.getInformation() %><br>Category:-<%=b.getCategory() %>
                  <h3>Rs.<%=b.getPrice()%></h3>
                    <%
			if(session.getAttribute("usertype")=="user")
			{%>
			<div class="buy_now_button"><a href="AddBookServlet?Name=<%= b.getName()%>">Buy Now</a></div>
			<%}
			 %>
                     </div>
                <div class="cleaner">&nbsp;</div>
            </div>
            <%} else{ %>
            <div class="cleaner_with_width">&nbsp;</div>
      
            <div class="templatemo_product_box">
            	<h1><%= b.getName() %> <span><%= b.getAuthor()%></span></h1>
       	    <img src="<%=b.getImage() %>" alt="image"  width="100" height="100" />
                <div class="product_info">
                	<p><%=b.getInformation() %><br></>Category:-<%=b.getCategory() %></p>
                    <h3>Rs.<%=b.getPrice()%></h3>
                    <%
			if(session.getAttribute("usertype")=="user")
			{%>
			<div class="buy_now_button"><a href="AddBookServlet?Name=<%= b.getName()%>">Buy Now</a></div>
			<%}
			 %>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>
            
            <div class="cleaner_with_height">&nbsp;</div>
            <%} %>
                 <% }}%>
            </div>
            
            <div class="cleaner_with_height">&nbsp;</div>
            
              </div> <!-- end of content right -->
    
    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       </a>	</div> 
    <!-- end of footer -->
<!--  Free CSS Template www.templatemo.com -->
</div> <!-- end of container -->
<div align=center></div></body>
</html>