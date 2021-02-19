<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  </head>
<body style="background-color:#337ab7;">
<div class="container">
<h2>Make Payment Here...</h2>
<hr>
<%@page import="java.sql.*"%>
<%

HttpSession hs=request.getSession();
String uid=hs.getAttribute("uid").toString();
String pid=request.getParameter("pid");
String img=request.getParameter("img");
String cost=request.getParameter("cost");
String title=request.getParameter("title");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root","root");

PreparedStatement prstm=conn.prepareStatement("insert into orders(productname,pcost,image,uid,pid)values(?,?,?,?,?)");
prstm.setString(1, title);
prstm.setString(2, cost);
prstm.setString(3, img);
prstm.setString(4, uid);
prstm.setString(5, pid);
prstm.executeUpdate();




%>


<form method="post" action="Invoice.jsp">

<h5>Payment Amount: <%out.println(request.getParameter("cost")); %></h5>

<select  class="form-control">
<option >--Select Card---</option>
<option >Visa Card</option>
<option >Master card</option>
<option >Maestro Card</option>
<option >Credit Card</option>
</select>
<br/>
<input type="hidden" name="pid" value="<% out.println(request.getParameter("pid"));%>">
<input type="hidden" name="title" value="<% out.println(request.getParameter("title"));%>">
<input type="hidden" name="cost" value="<% out.println(request.getParameter("cost"));%>">

<input type="text" placeholder="Enter Name on Card" class="form-control" required>
<br/>
<input type="month" placeholder="Enter Expiry Date on Card" class="form-control" required>

<br/>
<input type="text" placeholder="Enter CVV" class="form-control" required>
<br/>
<textarea class="form-control" name="address"  class="form-control" placeholder="Enter Address of Dealivary"></textarea>
<br/>
<input type="submit" value="Submit" name="sub">
</form>








</div>
</body>
</html>