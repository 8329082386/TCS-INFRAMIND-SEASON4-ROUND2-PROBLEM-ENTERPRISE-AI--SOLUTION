<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@page import="java.sql.*"%>
<%
String productname="";
String number="";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root","root");
Statement stm34=conn.createStatement();
ResultSet rs34=stm34.executeQuery("select * from lockproduct");
while(rs34.next()){
	int ecost=Integer.parseInt(rs34.getString(3));
	int currentcost=0;
	number=rs34.getString(5);
	productname=rs34.getString(6);
	
	out.println(""+ecost);
	PreparedStatement prstm11=conn.prepareStatement("select * from product where uid=?");
	prstm11.setString(1,rs34.getString(2));
	ResultSet rs11=prstm11.executeQuery();
	while(rs11.next()){
		currentcost=Integer.parseInt(rs11.getString(3));
		
	}
	if(ecost<=currentcost){
		
		String url="http://localhost:8082/CommadityServices/SendingSmsServlet?prdname="+productname+"&number="+number+"";
		response.sendRedirect(url);
	}
	
}
%>



</body>
</html>