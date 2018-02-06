<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.*, com.book.pojo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Book Store </title>
<meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML" />
<meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">

  function checkForm(form)
  {
	if(form.ccnumber.value == "") {
	      alert("Error: Credit Card number cannot be blank!");
	      form.ccnumber.focus();
	      return false;
	}
	if(form.ccnumber.value.length < 16 || form.ccnumber.value.length > 16) {
        alert("Error: Credit Card number must contain at least 16 digits!");
        form.ccnumber.focus();
        return false;
      }
	if(form.cname.value == "") {
	      alert("Error: Name cannot be blank!");
	      form.cname.focus();
	      return false;
	}
	if(form.cvvnumber.value == "") {
	      alert("Error: Cvv Number cannot be blank!");
	      form.cvvnumber.focus();
	      return false;
	}
	if(form.cvvnumber.value.length < 3 || form.cvvnumber.value.length > 3) {
        alert("Error: Cvv number must contain at least 3 digits!");
        form.ccnumber.focus();
        return false;
      }
	if(form.zipcode.value == "") {
	      alert("Error: Zipcode cannot be blank!");
	      form.zipcode.focus();
	      return false;
	    }
	if(form.zipcode.value.length < 5 || form.zipcode.value.length > 5) {
        alert("Error: Zipcode must contain at least 5 digits!");
        form.zipcode.focus();
        return false;
      }
	if(form.shippingaddress.value == "") {
	      alert("Error: Shipping Address cannot be blank!");
	      form.shippingaddress.focus();
	      return false;
	    }
	return true;
  }

</script>
<body>
<!--  Free CSS Templates from www.templatemo.com -->
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
          <li><a href="index.jsp" class="current">Home</a></li>         
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
       
<h1><center>Make Payment</h1>
<form action="Paymentservlet" method="post" onsubmit="return checkForm(this);">
<br>
<table >
<tr><td>Credit Card Number:-</td><td><input type="text" name="ccnumber" value=""></td></tr>
<tr><td>Name on the Credit Card:- </td><td><input type="text" name="cname" value=""></td></tr>
<tr><td>Cvv Number:-   </td><td><input type="text" name="cvvnumber" value=""></td></tr>
<tr><td>Zip Code:- </td><td><input type="text" name="zipcode" value=""></td></tr>
<tr><td>Shipping Address:-  </td><td><input type="text" name="shippingaddress" value=""></td></tr>
<tr><td><input type="submit" name="action" value="Make Payment and Place the Order"></td></tr>
</table>
</form>
 </div></div></div>
</body>
</html>