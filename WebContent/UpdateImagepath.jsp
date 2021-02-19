<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	  <%@ page import="java.sql.*" %>
<%

HttpSession hs=request.getSession();
String pid=hs.getAttribute("pid").toString();
String imgname=hs.getAttribute("target").toString();
//out.println(""+path+""+imgname);
try{
	
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost/ecommerce","root","root");
PreparedStatement prst=con.prepareStatement("insert into images(pid,image)values(?,?)");
prst.setString(1, pid);
prst.setString(2, imgname);
prst.executeUpdate();

}catch(Exception e){
	out.println(""+e);
}


%>
<script>
alert("Image Uploaded Sucessfully");
window.location="UpdateImages.jsp"
</script>
</body>
</html>