<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>E-Commerce</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="css/bootstrap.min.css"></script>
  <script src="css/bootstrap.css"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>
<h1 style="color:#ffffff">Online Customer Analytica</h1>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Dashboard.jsp">E-Commerce</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Dashboard.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Add_Product.jsp">Add Product</a></li>
          <li><a href="View_Product.jsp">View Product</a></li>
          <li><a href="Update_Select.jsp">Update Product</a></li>
          <li><a href="Delete_Product.jsp">Remove Product</a></li>
          
        </ul>
      </li>
<li class="dropdown"><a c+lass="dropdown-toggle" data-toggle="dropdown" href="#">User<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="View_Users.jsp">View Users</a></li>
          <!--  <li><a href="Block_Users.jsp">Block Users</a></li>-->
          
        </ul>
      </li>

  
      <li>
      <a href="AddWord.jsp">Add Word</a>
      </li>
     <li>
      <a href="AddStopword.jsp">Add Stop Word</a>
      </li>
     <li>
      <a href="UpdateImages.jsp">Add Images</a>
      </li>
      <li>&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </li>
        <li>
        
        
      <a href="Login.jsp">Log Out</a>
      </li>
       
       
    </ul>
  </div>
</nav>
</body>
</html>