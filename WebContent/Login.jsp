<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<html>
<head>
	<title>E-Commerce|Log In</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body background=images/back.jpg>
 <div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
			<img style="background-color:#ffffff;" align="center" width="80px" height="80px" class="img-responsive" src="images/logo.png"/>
		    <br/>
		    
			<form action="Login.jsp">

			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Log In Here</center></h1>
		    <div class="form-group"> 
                <input type="text" class="form-control" id="nm" name="email" placeholder="Enter Your Email"> 
            </div> 

            <div class="form-group"> 
                <input type="password"class="form-control" id="ps" name="pass" placeholder="Enter Your Password"> 
            </div> 
            <div align="right">
            <a href="Forget_Password.jsp" style="color:#ffffff;"><b>Forget Password</b></a>
            </div>
			               <center> <input type="submit" name="login" value="Log In"/> </center>
			<div class="form-group"> 
             
            </div> 

          
                       </form>
		</div>
		
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<%
				String isclick=request.getParameter("login");
				if(isclick!=null){
             try{
                 String usname=request.getParameter("email");
                 String pwd=request.getParameter("pass");
               
                 if(usname.contentEquals("admin")&&pwd.contentEquals("admin")){
                	 %>
                	 <script>
                     window.location="Dashboard.jsp"
                 </script>
                <% 
                 }else{
                	 %>
                	 <script>
                	 alert("Invalid Username or Password");
                	 </script>
                	 <% 
                	 
                 }
             }
             

             catch(Exception ex){
            // out.println(""+ex.getMessage());
             ex.printStackTrace();
             }
				}           
             %>

</body>
</html>