 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
 <%@include file="Header.jsp" %>

<html lang="en">
<head>
	<title>E-Commerce|View Product</title>
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
thead,td{
color:#6666ff;
background-color:#ffffff;
font-family:Times New Roman;
font-size:20px;
border-width: 10;
width: 280;
border-style:ridge double groove solid;
}
</style>
</head>
<body background=images/ecombg.jpg>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
			<img style="background-color:#ffffff;" align="center" width="80px" height="80px" class="img-responsive" src="images/logo.png"/>
		   
			<form method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>View Product</center></h1>
		    
		    <center>
		     <table class="table table-bordered">
		     <thead style="border-width: 10; width: 250; border-color: red green blue yellow;  border-style: ridge">
            <tr>
                 <th>Images</th>
              
                 <th>Action</th>
                 
             </tr>
             </thead>
             <tbody>
         <tr>
         <%
String buttonclick=request.getParameter("sub");

    try{
    	 Class.forName("com.mysql.jdbc.Driver");
         Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");

        Statement stm=conn.createStatement();
        ResultSet rs=stm.executeQuery("Select * from images where pid="+request.getParameter("pid"));
       
        while(rs.next())
        {
        %>
        
        <tr>
        <td ><img src="images/<%out.println(rs.getString(2));%>" style="width:100px;"></td>
 
 
<td><a href="RemoveImages2.jsp?pid=<%=rs.getString(1)%>"><input type="button" value="Remove Images"></a></td>
</tr>
        <%
        }
    }
    catch(Exception ex){
    out.println(""+ex.getMessage());
    ex.printStackTrace();
    }

    %>
    </tbody>
         </table> 
         </center>         
            </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>



</body>
</html>