<!DOCTYPE html>
<html lang="en">
<head>
	<title>E-Commerce|Registration</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.bg {
  /* The image used */
  background-image: url("images/ecombg.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

</style>
</head>
<body style="background-image: url('images/back.jpg');background-position:right;">

<div class="container">
<br/><br/><br/><br/>
	
		<div class="col-md-2">
		
		</div>
		<div class="col-md-8">
		
		
		
		<div class="panel panel-default" style="background-color:#129889;">
              <div class="panel-body">
              
			
		    <br/>
			<form method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Register Here</center></h1>
		    <div class="form-group"> 
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Name" required> 
            </div> 

            <div class="form-group"> 
                <input type="text"class="form-control" pattern="[0-9]{10}"name="contact" placeholder="Enter Your Contact" required> 
            </div> 

            <div class="form-group"> 
                <input type="email" class="form-control" name="email" placeholder="Enter your Email" required> 
            </div> 
            
             <div class="form-group"> 
                <input type="password" class="form-control" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" name="password" placeholder="Enter your Password" title="1 Uppercase ,1 Lower Case,1 Digit,1 Special Character,Minimum 8 Characters" required> 
            </div> 
             <div class="form-group"> 
                <input type="password" class="form-control" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" name="password2" placeholder="Reenter Your Password" title="1 Uppercase ,1 Lower Case,1 Digit,1 Special Character,Minimum 8 Characters" required> 
            </div> 
                <center><input type="submit"  name="sub" value="Register"/> </center>
            
             <div class="form-group"> 
               <center> <a style="color:#ffffff;" href="CustomerLogin.jsp"><b>Already a Member ? Login Here</b></a> </center>
            </div> 

            </form>
            </div>
            </div>
            </div>
            <div class="col-md-2">
            
            </div>
     
</div>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
	
	
	
String name=request.getParameter("name");
String contact=request.getParameter("contact");
String email=request.getParameter("email");

String password=request.getParameter("password");
String password2=request.getParameter("password2");

if(password.contentEquals(password2)){



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root","root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into ecommerce_registration(name,contact,email,password)values('"+name+"','"+contact+"','"+email+"','"+password+"')");
%>
<script>
alert("Registered Successfully");
<% response.sendRedirect("CustomerLogin.jsp"); %>
</script>
<%

}
catch(Exception e)
{
System.out.print(e);
//e.printStackTrace();
}
}else{
%>
	<script>
	alert("Password Does Not Match");
	
	</script>
<% 
}
}
%>


</body>
</html>