<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">

<%@include file="userheader.jsp" %>

<h2>Recent Products</h2>
<div class="row">
<%@ page import="java.sql.*" %>
<%!

Connection conn;
%>

<%
try{
Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");
}catch(Exception e){
	out.println(""+e);
}


%>


<div class="col-md-4">
<div class="panel panel-default">
  <div class="panel-body">
  <table class="table">
  <tr>
  <td>Images</td>
  <td>Product Title</td>
   <td>Action</td>
  </tr>
    <%
    
    Statement stm=conn.createStatement();
    ResultSet rs=stm.executeQuery("select * from product pd,images img where pd.uid=img.pid and pd.category='Cloths'");
    while(rs.next()){
    %>	
  <tr>
  <td><img src="images/<%out.println(rs.getString(8)); %>" width="50px" height="50px"></td>
  <td><%out.println(rs.getString(2)); %></td>
  <td><a href="ProductDetails.jsp?pid=<%out.println(rs.getString(1)); %>"><input type="button" value="Buy"></a></td>
  </tr>
    	
   <% 
    }
    
    
    %>
    
    </table>
    
    
  </div>
</div>
</div>




<div class="col-md-4">
<div class="panel panel-default">
  <div class="panel-body">
    
    
     <table class="table">
  <tr>
  <td>Images</td>
  <td>Product Title</td>
   <td>Action</td>
  </tr>
    <%
    
    Statement stm2=conn.createStatement();
    ResultSet rs2=stm2.executeQuery("select * from product pd,images img where pd.uid=img.pid and pd.category='Jwellary'");
    while(rs2.next()){
    %>	
  <tr>
  <td><img src="images/<%out.println(rs2.getString(8)); %>" width="50px" height="50px"></td>
  <td><%out.println(rs2.getString(2)); %></td>
  <td><input type="button" value="Buy"></td>
  </tr>
    	
   <% 
    }
    
    
    %>
    
    </table>
    
  </div>
</div>
</div>




<div class="col-md-4">
<div class="panel panel-default">
  <div class="panel-body">
  
  
   <table class="table">
  <tr>
  <td>Images</td>
  <td>Product Title</td>
   <td>Action</td>
  </tr>
    <%
    
    Statement stm3=conn.createStatement();
    ResultSet rs3=stm3.executeQuery("select * from product pd,images img where pd.uid=img.pid and category='Electronics'");
    while(rs3.next()){
    %>	
  <tr>
  <td><img src="images/<%out.println(rs3.getString(8)); %>" width="50px" height="50px"></td>
  <td><%out.println(rs3.getString(2)); %></td>
  <td><input type="button" value="Buy"></td>
  </tr>
    	
   <% 
    }
    
    
    %>
    
    </table>
  
  
  
  
  
  
  
  
  
  
  
  
  
  </div>
</div>
</div>







</div>
</div>

</body>
</html>