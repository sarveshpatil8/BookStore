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
                    <li><a href="subpage.html">Educational</a></li>
                    <li><a href="subpage.html">Fiction</a></li>
                    <li><a href="#">Mystery</a></li>
                    <li><a href="#">Thriller</a></li>
                    <li><a href="#">Romance</a></li>
                    <li><a href="#">Fantasy</a></li>    	
                </ul>
            </div>
			<div class="templatemo_content_left_section">
            	
            </div>
            <div class="templatemo_content_left_section">                
                
			</div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        
<h1>Login Page</h1>
<%String message=request.getParameter("message");
if(message==null)
	message="";
else
	message="Invalid Id or Password";

%>
<label style="color:red; fontsize:18px; ">
<%=message %>
</label>
<form action="LoginServlet" method="post">

<table>
<tr><td>Username:-</td><td><input type="text" name="username" value=""></td></tr>
<tr><td>Password:-</td><td><input type="password" name="password" value=""></td></tr>
</select></td></tr>
<tr><td><input type="submit" name="action" value="Login"></td> <td><a href="Registration.jsp">New User</a></td></tr>
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