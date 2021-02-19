<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
   

<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
<body>
<div class="container">
<h2>Invoice</h2>

<%@page import="java.sql.*"%>


<hr>
<%
HttpSession hs=request.getSession();
String cname=hs.getAttribute("name").toString();
String cnumber=hs.getAttribute("cnumber").toString();
%>

<h4><b>Customer Name :<%out.println(cname); %></b></h4>
<hr>
<table class="table">
<tr>
<td>Sr No.</td>
<td>Product Name</td>
<td>Quantity</td>
<td>Cost</td>

</tr>
<tr>
<td>1</td>
<td>
<%
out.println(request.getParameter("title"));
%>
</td>
<td>

<%
out.println("1");
%>

</td>
<td>
<%
out.println(request.getParameter("cost"));
%>
</td>

</tr>

</table>

<table class="table">
<tr>
<td><b>Total</b></td>
<td><b>
<%
out.println(request.getParameter("cost"));
%>
</b></td>
</tr>
</table>
<hr>

<b><h5>Dealivary Address</h5></b>

<%
out.println(request.getParameter("address"));

%>
<br/>
<%out.println(cnumber); %>
<br/>
Payment is due within 30 days from date of invoice. Late payment is subject to fees of 5% per month.
Thanks for choosing 
</div>
</body>
</html>