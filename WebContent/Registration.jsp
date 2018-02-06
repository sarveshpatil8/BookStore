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
<script type="text/javascript">

  function checkForm(form)
  {
	if(form.fname.value == "") {
	      alert("Error: First Name cannot be blank!");
	      form.fname.focus();
	      return false;
	}
	if(form.lname.value == "") {
	      alert("Error: Last name cannot be blank!");
	      form.lname.focus();
	      return false;
	}
	if(form.address.value == "") {
	      alert("Error: Address cannot be blank!");
	      form.address.focus();
	      return false;
	}
	if(form.mobileno.value == "") {
	      alert("Error: Mobile number cannot be blank!");
	      form.mobileno.focus();
	      return false;
	    }
	if(form.mobileno.value.length < 10 || form.mobileno.value.length > 10) {
        alert("Error: Mobile number must contain at least ten digits!");
        form.mobileno.focus();
        return false;
      }
	re=/^\d{10}$/;
	if (!re.test(form.mobileno.value)){
		alert("Error: Mobile number must contain numbers only!");
        form.mobileno.focus();
        return false;
	}
	
	if(form.emailid.value == "") {
	      alert("Error: Emailid cannot be blank!");
	      form.emailid.focus();
	      return false;
	    }
	filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
		if (!filter.test(form.emailid.value)){
			alert("Error: Pleas enter a valid email ID!");
		      form.emailid.focus();
		      return false;	
		}
    if(form.username.value == "") {
      alert("Error: Username cannot be blank!");
      form.username.focus();
      return false;
    }
    re = /^\w+$/;
    if(!re.test(form.username.value)) {
      alert("Error: Username must contain only letters, numbers and underscores!");
      form.username.focus();
      return false;
    }
      if(form.password.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.password.focus();
        return false;
      }
      if(form.password.value == form.username.value) {
        alert("Error: Password must be different from Username!");
        form.password.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        form.password.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        form.password.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        form.password.focus();
        return false;
      }
      if(form.cpassword.value == "") {
          alert("Error: Confirm Password cannot be blank!");
          form.cpassword.focus();
          return false;
      }
      if(form.password.value != form.cpassword.value) {
          alert("Error: Password do not match !!!");
          form.password.focus();
          return false;
        }
    alert("You entered a valid password: " +form.username.value);
    return true;
  }

</script>
<body>
<!--  Free CSS Templates from www.templatemo.com -->
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
          <li><a href="index.jsp" class="current">Home</a></li>  
            <li><a href="index.jsp">New Releases</a></li>  
            <li><a href="About us.html">Company</a></li> 
            <li><a href="ContactUs.html">Contact</a></li>
    	</ul>
    </div> <!-- end of menu -->
    
    <div id="templatemo_header">
    	<div id="templatemo_special_offers">
        	<p>
                <span>25%</span> discounts for
        purchase over Rs.1000
        	</p>
			<a href="subpage.html" style="margin-left: 50px;">Read more...</a>
        </div>
        
        
        <div id="templatemo_new_books">
        	<ul>
               <li>luckiest girl alive</li>
                <li>The Long Road</li>
                <li>The Daughter</li>
            </ul>
            <a href="subpage.html" style="margin-left: 50px;">Read more...</a>
        </div>
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
            	<h1>Bestsellers</h1>
                <ul>
                    <li><a href="#">2 States</a></li>
                    <li><a href="#">The 3 mistakes of my life</a></li>
                    <li><a href="#">Half Girlfriend</a></li>
                    <li><a href="#">Silver linings Playbook</a></li>
                    <li><a href="#">The fault in our Stars</a></li>
                    <li><a href="#">Gone Girl</a></li>
                    <li><a href="http://www.flashmo.com" target="_parent">Flash Templates</a></li>
                    <li><a href="http://www.templatemo.com" target="_parent">CSS Templates</a></li>
                    <li><a href="http://www.webdesignmo.com" target="_parent">Web Design</a></li>
                    <li><a href="http://www.photovaco.com" target="_parent">Free Photos</a></li>
            	</ul>
            </div>
            
            <div class="templatemo_content_left_section">                
                <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
<a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
			</div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        
<h1>Registration Form</h1>
<form action="RegServlet" method="post" onsubmit="return checkForm(this);">
<br>
<table >
<tr><td>First Name:-</td><td><input type="text" name="fname" value=""></td></tr>
<tr><td>Last Name:- </td><td><input type="text" name="lname" value=""></td></tr>
<tr><td>Address:-   </td><td><input type="text" name="address" value=""></td></tr>
<tr><td>Mobile No:- </td><td><input type="text" name="mobileno" value=""></td></tr>
<tr><td>Email Id:-  </td><td><input type="text" name="emailid" value=""></td></tr>
<tr><td>Username:-  </td><td><input type="text" name="username" value=""></td></tr>
<tr><td>Password:-  </td><td><input type="password" name="password" value=""></td></tr>
<tr><td>Confirm Password:-  </td><td><input type="password" name="cpassword" value=""></td></tr>
<tr><td>User Type:- </td><td><select name="usertype">
  <option value="Admin">Admin</option>
  <option value="User">User</option>
</select></td></tr>
<tr><td><input type="submit" name="action" value="Submit"></td></tr>
</table>
</form>

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