 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
<%
String uid=request.getParameter("uid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM ecommerce_registration WHERE uid="+uid);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
</body>
<script>
alert("User Blocked Sucessfully")
window.location="View_Users.jsp"
</script>
</html>