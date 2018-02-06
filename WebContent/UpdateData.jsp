<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.*,com.book.pojo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Book Store</title>
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
          <li><a href="index.jsp">New Releases</a></li>  
          <li><a href="About us.html">About Us</a></li> 
          <li><a href="ContactUs.html">Contact</a></li>
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
                <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
<a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
			</div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        
<h1>Update Book Data</h1>
<form action="UpdateServlet" method="post">
<br>
<%List list=(List)session.getAttribute("list");
if(list!=null && list.size()>0)
{
	for(int i=0;i<list.size();i++)
	{
		Book m=(Book)list.get(i);
		%>
<table align="center">
<tr><td>Id:-</td><td><input type="text" name="id" value="<%=m.getId() %>"></td></tr>
<tr><td>Name:-</td><td><input type="text" name="name" value="<%=m.getName() %>"></td></tr>
<tr><td>Author:-</td><td><input type="text" name="author" value="<%=m.getAuthor() %>"></td></tr>
<tr><td>Category:-</td><td><input name="category" value="<%=m.getCategory() %>">
<tr><td>Information:-</td><td><input type="text" name="information" value="<%=m.getInformation() %>"></td></tr>
<tr><td>Price:-</td><td><input type="text" name="price1" value="<%=m.getPrice() %>"></td></tr>
<tr><td>Quantity:-</td><td><input type="text" name="quantity" value="<%=m.getQuantity() %>"></td></tr>
<%
}}
%>
<tr><td><input type="submit" name="action" value="Submit"></td></tr>
</table>
</form>
<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    <div id="templatemo_footer">
    	
</div> <!-- end of container -->
<div align=center></div>
</html>