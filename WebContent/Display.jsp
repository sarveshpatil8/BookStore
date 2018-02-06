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
                </div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
<h1>All Book Details</h1><form action="DisplayServlet">
<table border="5" align="center" cellpadding="5" cellspacing="5">
<th>Id</th>
<th>Name</th>
<th>Author</th>
<th>Category</th>
<th>Information</th>
<th>Price</th>
<th>Quantity</th>
<%
List list=(List)session.getAttribute("Booklist");
if(list!=null && list.size()>0)
{
	for(int i=0;i<list.size();i++)
	{
		Book b=(Book)list.get(i);
		%>
		<tr>
		<td><%=b.getId() %></td>
		<td><%=b.getName() %></td>
		<td><%=b.getAuthor() %></td>
		<td><%=b.getCategory() %></td>
		<td><%=b.getInformation() %></td>
		<td><%=b.getPrice() %></td>
		<td><%=b.getQuantity() %></td>s
		<td><a href="UpdateServlet?id=<%=b.getId() %>">Update</td>
		<td><a href="DeleteServlet?id=<%=b.getId() %>">Delete</td>
		<%
	}
}

%>
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