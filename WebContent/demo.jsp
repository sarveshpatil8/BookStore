<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>

 <input type="text" class="classname" id="firstName" >
 <input type="text" class="classname" id="lastName" >
 
 <button type="button" onclick="getMyName();" >submit</button>
 <a href="DemoServlet?fname=tejas&lastname=chachad&ohoneno=3453534">click here</a>
 
 <script type="text/javascript">
 
 function getMyName(){
	
	 
	  $('input.classname').each(function(){
	     
		    alert($(this).val());   
		});
	 
	 
	 var fname =$('#firstName').val();
	 $.ajax({
		type:"get",
		url:"DemoServlet",
		data:{fname:fname,lName:"chacad"},
		success:function(response){
			$('#lastName').val(response);
		},
		error:function(){
			
		}
	
	 });
 }
 
 </script>  
</body>
</html>