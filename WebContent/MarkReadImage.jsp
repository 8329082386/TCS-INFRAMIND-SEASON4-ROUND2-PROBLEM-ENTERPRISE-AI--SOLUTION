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
 <%@ page import="java.util.*" %>
<%
try{
HttpSession hs=request.getSession();
String uname=hs.getAttribute("name").toString();
String imagename=request.getParameter("imagename");
String data= (new java.util.Date()).toLocaleString();

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root","root");
PreparedStatement prstm=conn.prepareStatement("insert into imagesclick(imagename,clickby,time_data)values(?,?,?)");
prstm.setString(1,imagename);
prstm.setString(2, uname);
prstm.setString(3, data);
prstm.executeUpdate();
response.sendRedirect("index.jsp");
}catch(Exception e){
	
}
%>
</body>
</html>