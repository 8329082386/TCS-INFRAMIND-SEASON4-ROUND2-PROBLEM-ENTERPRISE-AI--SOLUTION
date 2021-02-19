<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body  style="background-color:#337ab7;">
<div class="container">
 <%@include file="Header.jsp" %>
</div>
 <div class="container">
 <h2 style="color:#ffffff;">Review Given</h2>
 <hr>
 	<%@ page import="java.sql.*" %>
 	<table class="table">
 	<tr>
 	<td style="color:#ffffff"><b>Product Name</b></td>
 	<td style="color:#ffffff"><b>Total Reviews Extracted</b></td>
 	
 	</tr>
 	<%
 	Connection conn;
 	try{
String reviews="";
 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");


 
Statement stm=conn.createStatement();
ResultSet rs=stm.executeQuery("select * from product");
while(rs.next()){
	
	reviews="";
	PreparedStatement prstm=conn.prepareStatement("select * from reviews where pid=?");
	prstm.setString(1,rs.getString(1));
	ResultSet rs23=prstm.executeQuery();
	while(rs23.next()){
		//out.println(rs23.getString(2));
		
		
		reviews=reviews+" | "+rs23.getString(3);
		
		
		
	}

	
%>
	<tr>
 	<td style="color:#ffffff">
 	<b><%
 	out.println(rs.getString(2));
 	%></b>
 	</td>
 	 	<td style="color:#ffffff">
 	<b><%
 	out.println(reviews);
 	%></b>
 	</td>
 	</tr>

<% 

}
 	}catch(Exception e){
 		out.println(""+e);
 	}
 
%>
</table>
<br/>
<a href="ReviewsAnalysis2.jsp"><input type="button" value="Reviews Analysis"></a>
<br/>
<br/>
<hr>


 </div>
</body>
</html>