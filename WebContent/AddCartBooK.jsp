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
			<li><a href="Cart">Shopping Cart</a></li>
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
        
<h1>Add To Cart</h1>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
List list=(List)session.getAttribute("booklist");
int quant=0;
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "bookstore";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
Book m=(Book)list.get(0);
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT quantity FROM book where Name = '"+m.getName()+"'";
resultSet = statement.executeQuery(sql);
if(resultSet.next()){
	
	quant = Integer.parseInt(resultSet.getString(1));
}
} catch (Exception e) {
e.printStackTrace();
}

String message=request.getParameter("msg");
if(message==null)
	message="";
else
	message=quant +" left in stock";

%>
<label style="color:red; fontsize:18px; ">
<%=message %>
</label>
<form action="AddToCartServlet" method="post">
<table border="5" align="center" cellpadding="5" cellspacing="5">
<%
if(list!=null && list.size()>0)
{
	for(int i=0;i<list.size();i++)
	{
		Book m=(Book)list.get(i);
		%>
<tr><td>Name:-</td><td><input type="text" name="name" value="<%=m.getName() %>"></td></tr>
<tr><td>Author:-</td><td><input type="text" name="author" value="<%=m.getAuthor() %>"></td></tr>
<tr><td>Price:-</td><td><input type="text" name="price" value="<%=m.getPrice() %>"></td></tr>
<tr><td>Qauntity:-</td><td><input type="text" name="quantity" value=""></td></tr>
	<%
	}
}
%>

<tr><td><input type="submit" name="action" value="addtocart"></td></tr>
</table>
</form>

    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       </div> 
    <!-- end of footer -->
<!--  Free CSS Template www.templatemo.com -->
</div> <!-- end of container -->
<div align=center></div></body>
</html>