 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<html lang="en">
<head>
	<title>E-Commerce|Delete Product</title>
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
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
	
			<form>
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Delete Product</center></h1>
	
  <%
String tit=request.getParameter("title");
String buttonclick=request.getParameter("sub");


try
{
%>
	<center>
    <table class="table table-bordered">
    <thead >
   <tr>
        <th>Title</th>
        <th>Cost</th>
        <th>Description</th>
        <th>Company Name</th>
        <th>Category</th>
        <th>Delete</th>
    </tr>
    </thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root","root");
Statement st=conn.createStatement();

ResultSet rs=st.executeQuery("Select * from product");
int i=0;
while(rs.next()){
%>
<tr>
        <td height="50"><%=rs.getString("title")%></td>
       <td><%=rs.getString("cost")%></td>
    <td><%=rs.getString("description")%></td>
    <td><%=rs.getString("company_name")%></td>
    <td><%=rs.getString("category")%></td>
<td><a href="delete_process.jsp?uid=<%=rs.getString("uid")%>">
<button type="button" class="delete">Delete</button></a></td>
</tr>

<%
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
           </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>


</body>
</html>