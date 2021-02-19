 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html lang="en">
<head>
	<title>E-Commerce|Add Product</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color:#337ab7;">
<div class="container">

 <%@include file="Header.jsp" %>
</div>
<div class="container">
<form method="post">
				<input type="text" name="word" placeholder="Enter Stop word" class="form-control" >
			
				<br/>
				<input type="submit" value="Submit" name="sub">
				</form>
				<%@ page import="java.sql.*" %>
				<%
				String str22=request.getParameter("sub");
				Connection conn;
				if(str22!=null){
					
					try{
						Class.forName("com.mysql.jdbc.Driver");
						conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");
						PreparedStatement prstm=conn.prepareStatement("insert into stopword (word)values(?);");
					    prstm.setString(1, request.getParameter("word").trim());
					    //prstm.setString(2, request.getParameter("category").trim());
						prstm.executeUpdate();
						
					%>
					<script>
					
					alert("Word Added Sucessfully")
					</script>
					
					<%
					   
					}catch(Exception e){
							out.println(""+e);
						}
					
				}
				
				
				
				
				%>
				



</div>
</div>

</body>
</html>