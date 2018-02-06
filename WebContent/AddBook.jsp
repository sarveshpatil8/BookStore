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
            <li><a href="AddBook.jsp">Add Book</a></li>
            <li><a href="DisplayBookList">Modify</a></li>            
            <li><a href="About us.html">About Us</a></li> 
            <li><a href="ContactUs.html">Contact</a></li>
            <li><a href="index.jsp">Log Out</a></li>
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
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        
<h1>Add Book Data</h1>
<form action="AddServlet" method="post">
<br>
<table >
<tr><td>Name:-</td><td><input type="text" name="name" value=""></td></tr>
<tr><td>Author:-</td><td><input type="text" name="author" value=""></td></tr>
<tr><td>Category:-</td><td><select name="category">
  <option value="Education">Education</option>
  <option value="Mystery">Mystery</option>
  <option value="Fiction">Fiction</option>
  <option value="Thriller">Thriller</option>
  <option value="Romance">Romance</option>
  <option value="Fantasy">Fantasy</option>
</select></td></tr>
<tr><td>Information:-</td><td><input type="text" name="information" value=""></td></tr>
<tr><td>Price:-</td><td><input type="text" name="price1" value=""></td></tr>
<tr><td>Quantity:-</td><td><input type="text" name="quantity" value=""></td></tr>
<tr><td><input type="submit" name="action" value="Submit"></td></tr>
</table>
</form>

    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       </div> 
    <!-- end of footer -->

</div> <!-- end of container -->
<div align=center></div></body>
</html>