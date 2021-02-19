<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
<%@ page import="java.sql.*" %>
<%@include file="userheader.jsp" %>
<%!

Connection conn;
String title,cost,desc,companyname,category;
%>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");
}catch(Exception e){
	out.println(""+e);
}
String str1=request.getParameter("pid");
Statement stm=conn.createStatement();
ResultSet rs=stm.executeQuery("select * from product where uid="+str1);
while(rs.next()){
	title=rs.getString(2);
	cost=rs.getString(3);
	desc =rs.getString(4);
	companyname=rs.getString(5);
	category=rs.getString(6);
	
}

%>
<h2><%out.println(title); %></h2>
<div class="row">
<div class="col-md-6">
<%
Statement stm2=conn.createStatement();
ResultSet rs2=stm2.executeQuery("select * from images where pid="+str1);
while(rs2.next()){
%>
<img src="images/<%out.println(rs2.getString(2)); %>" width="100px" height="100px">

<%	
	
}
%>
<hr>
<h3>Recommonded Products for you</h3>
</div>
<div class="col-md-6">
<table class="table">
<tr>
<td>Product Title</td>
<td><%out.println(title); %></td>
</tr>
<tr>
<td>Product Cost</td>
<td><%out.println(cost); %></td>
</tr>
<tr>
<td>Product Description</td>
<td><%out.println(desc); %></td>
</tr>
<tr>
<td>Company Name</td>
<td><%out.println(companyname); %></td>
</tr>
<tr>
<td>category</td>
<td><%out.println(category); %></td>
</tr>
<tr>
<td>Your Comment</td>
<td>
<form>
<textarea rows="" cols="" placeholder="Enter Your Comments" class="form-control"></textarea>
<br/>
<input type="">
</form>

</td>
</tr>
</table>

</div>

</div>
</div>
</body>
</html>