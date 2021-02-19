<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<html>
<head>
<title>E-Commerce|Log In</title>	 
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
 <style>
 div.back{
 
 background-color:#129898;
 border-style:solid;
 border-width:5px;
 border-radius:10px;
 width:90px;
 height:90px;
 }
 .center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
 </style>     
</head>
<body style="background-image: url('images/back.jpg');background-position:right;">
 <div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	
		<div class="col-md-4">
		
		</div>
		<div class="col-md-4">
		
		<div class="panel panel-default" style="background-color:#129889;">
              <div class="panel-body">
           <div class="row">
           <div class="col-md-4"></div>
           <div class="col-md-4">
           <img src="images/basket.jpg"  style="width:80px;height:90px; border-radius:10px;">
          
           </div>
           <div class="col-md-4"></div>
           </div>
			
			
			<form method="post">

			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Log In Here</center></h1>
		    <div class="form-group"> 
                <input type="text" class="form-control" id="nm" name="email" placeholder="Enter Your Email"> 
            </div> 

            <div class="form-group"> 
                <input type="password"class="form-control" id="ps" name="pass" placeholder="Enter Your Password"> 
            </div> 
            <div align="right">
          
            </div>
			               <center> <input type="submit" name="login" value="Log In"/> </center>
			<div class="form-group"> 
               <center> <a style="color:#ffffff;" href="Registration.jsp"><b>Not Registered ? Register Here</b></a> </center>
            </div> 

          
                       </form>
                       </div>
                       </div>
		</div>
		<div class="col-md-4">
		
		</div>
		</div>
		
</div>
<%
				String isclick=request.getParameter("login");
				if(isclick!=null){

             try{
                 String usname=request.getParameter("email");
                 String pwd=request.getParameter("pass");
               
                 HttpSession hs=request.getSession();
                	 
                
                 boolean status=false;
                 boolean isfound=false;
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root","root");
                  Statement stm=conn.createStatement();
                 ResultSet rs=stm.executeQuery("Select * from ecommerce_registration");
                
                 while(rs.next())
                 {
                     if(usname.contentEquals(rs.getString(4))&&pwd.contentEquals(rs.getString(5)))
                     {

                     isfound=true; 
                     hs.setAttribute("uid",rs.getString(1));
                     hs.setAttribute("name", rs.getString(2));
                     hs.setAttribute("cnumber", rs.getString(3));
                     
                     }else{
                                          }
                 %>
          		<%
                 }
                 
                 if(isfound){
                    
                 %>
                 <script>
                     window.location="index.jsp"
                 </script>
                 
                 <%
                     
                 }else{
                   
                  %>
                  <script>
                      
                        alert("Invalid Username or Password")
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