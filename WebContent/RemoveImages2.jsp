<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%

try{
	 Class.forName("com.mysql.jdbc.Driver");
    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
   PreparedStatement prstm=conn.prepareStatement("delete from images where imgid=?");
   prstm.setString(1,request.getParameter("pid"));
   prstm.executeUpdate();
   %>
   <script>
   alert("Image Deleted Sucessfully")
  window.location="UpdateImages.jsp";
   </script>
   
   <% 
    
}catch(Exception e){
	out.println(""+e);
}



%>
</body>
</html>