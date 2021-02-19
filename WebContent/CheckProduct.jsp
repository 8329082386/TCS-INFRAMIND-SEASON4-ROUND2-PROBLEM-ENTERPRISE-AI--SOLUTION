<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<%@page import="java.sql.*"%>
<table class="table">
<tr>
<td>Product Name</td>
<td>Accepted Cost</td>
<td>Actual Cost</td>
<td>is Found</td>
<td>Number</td>

</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root","root");
 Statement stm=conn.createStatement();
ResultSet rs=stm.executeQuery("Select * from lockproduct");
int expectedcost=0;
int actualcost=0;
String number="";
while(rs.next()){
	number=rs.getString(5);
	expectedcost=Integer.parseInt(rs.getString(3));
%>
<tr>
<td><%out.println(rs.getString(6)); %></td>
<td><%out.println(""+expectedcost); %></td>


<% 	
	
	
	PreparedStatement stm22=conn.prepareStatement("select * from product where uid=?");
	stm22.setString(1, rs.getString(2));
	ResultSet rs22=stm22.executeQuery();
	while(rs22.next()){
		actualcost=Integer.parseInt(rs22.getString(3));
%>
<td><%out.println(rs22.getString(3)); %></td>
<% 
	}
	if(actualcost<=expectedcost){
	%>
	<td><%out.println("<b>Expectation Match</b>"); %></td>
	<% 
	}else{
	%>
	<td><%out.println("<b>Expectation Not Match</b>"); %></td>
	<%
	}
%>
<td><%out.println(rs.getString(5)); %></td>
</tr>
<% 
	
}

%>
</table>
</body>
</html>