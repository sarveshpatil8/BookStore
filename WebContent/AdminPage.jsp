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
           	<li><a href="AdminPage.jsp" class="current">Home</a></li>
            <li><a href="AddBook.jsp">Add Book</a></li>
            <li><a href="DisplayBookList">Modify</a></li>            
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
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
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
<h2 align="center"><font><strong>Order List</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<td><b>id</b></td>
<td><b>Book Name</b></td>
<td><b>Author</b></td>
<td><b>Quantity</b></td>
<td><b>Price</b></td>
<td><b>Total</b></td>
<td><b>User Id</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM orderplace";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("total") %></td>
<td><%=resultSet.getString("userid") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
        
        <%
        List list=(List)session.getAttribute("Booklist");
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
   	      <img src="<%=b.getImage() %>" alt="image" />
                <div class="product_info">
                	<p><%=b.getInformation() %><br></p>
                  <h3>Rs.<%=b.getPrice()%></h3>
                    <div class="buy_now_button"><a href="subpage.html">Buy Now</a></div>
                     </div>
                <div class="cleaner">&nbsp;</div>
            </div>
            <%} else{ %>
            <div class="cleaner_with_width">&nbsp;</div>
      
            <div class="templatemo_product_box">
            	<h1><%= b.getName() %> <span><%= b.getAuthor()%></span></h1>
       	    <img src="<%=b.getImage() %>" alt="image" />
                <div class="product_info">
                	<p><%=b.getInformation() %><br></></p>
                    <h3>Rs.<%=b.getPrice()%></h3>
                    <div class="buy_now_button"><a href="subpage.html">Buy Now</a></div>
              
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
    
    
	       </div> 
    <!-- end of footer -->

</div> <!-- end of container -->
<div align=center></div></body>
</html>