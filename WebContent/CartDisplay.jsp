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
			<li><a href="AddToCartServlet">Shopping Cart</a></li>
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
       
<h1><center>Added Book List</h1>
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
<th>Id</th>
<th>Name</th>
<th>Author</th>
<th>Price $</th>
<th>Qauntity</th>
<th>Total</th>
<th>Update</th>
<%
float total=0;
List list=(List)session.getAttribute("addcartlist");
if(list!=null && list.size()>0)
{
	for(int i=0;i<list.size();i++)
	{
		AddToCart b=(AddToCart)list.get(i);
		%>
		<form action="AddToCartServlet" method="post">
		<input type="hidden" name="id" value="<%=b.getId() %>"/>
		<input type="hidden" name="price" value="<%=b.getPrice() %>" />
		<input type="hidden" name="name" value="<%=b.getName() %>" />
		<tr>
		<td><%=b.getId() %></td>
		<td><%=b.getName() %></td>
		<td><%=b.getAuthor() %></td>
		<td><%=b.getPrice() %></td>
		<td><input type="text" name="quantity" value="<%=b.getQuantity() %>"/></td>
		<td><%=b.getTotal() %></td>
		<td><input type="submit" name="action" value="update"/></td>
		<% 	total+=b.getTotal();%>
		</tr>
		</form>
		<%
	}
}

%>
<tr><td colspan="5">Total</td>
<td><%=total %></td>
<td><a href="MakePayment.jsp">Make Payment</a></td></tr>
</table>

<br>
<br>
<a href="index.jsp">Back To Home</a>


    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       </div> 
    <!-- end of footer -->
<!--  Free CSS Template www.templatemo.com -->
</div> <!-- end of container -->
<div align=center>/div></body>
</html>