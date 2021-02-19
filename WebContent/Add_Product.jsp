 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<html lang="en">
<head>
	<title>E-Commerce|Add Product</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color:#337ab7;">
<div class="container">

 <%@include file="Header.jsp" %>
</div>

<div class="panel-body">
<div class="container" >

<br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
			<form method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Add Product</center></h1>
		    <div class="form-group"> 
                <input type="text" class="form-control" name="title" placeholder="Enter Product Title" required> 
            </div> 

            <div class="form-group"> 
                <input type="text"class="form-control" pattern="^(([0-9]*)|(([0-9]*)\.([0-9]*)))$" name="cost" placeholder="Enter Product Cost in Rupees" required> 
            </div> 

            <div class="form-group"> 
                <input type="text" class="form-control" name="desc" placeholder="Enter Product Description" required> 
            </div> 
            
             <div class="form-group"> 
                <input type="text" class="form-control"  name="cname" placeholder="Enter Product Company Name" required> 
            </div> 
             <div class="form-group"> 
                <input type="text" class="form-control"  name="sname" placeholder="Enter Seller Ecommerce" required> 
            </div> 
            
                <div class="form-group">

   
		<div class="cols-md-6">
		<div>
		
           <select  class="form-control" name="category">
           <option>--Select Category--</option>
			  <option value="Cameras">Cameras</option>
			  <option value="Computers_Tablet_Laptop">Computers Tablet Laptop</option>
               <option value="Mobile_Phone">Mobile Phone</option>
               <option value="Sound_Vision">Sound Vision</option>
                <option value="Women_Clothing">Womens Clothing</option>
                  <option value="Women_Shoes">Womens Shoes</option>
                   <option value="Women_Hand_Bags">Womens Hand Bags</option>
                    <option value="Mens_Clothing">Mens Clothing</option>
                    <option value="Mens_Shoes">Mens Shoes</option>
                    <option value="Kids_Clothing">Kids Clothing</option>
                     <option value="Kids_Shoes">Kids Shoes</option>
                      <option value="Food_and_Beverage">Food and Beverage</option>
                       <option value="Health_and_Beauty">Health and Beauty</option>
                        <option value="Sport_and_Leisure">Sport and Leisure</option>
                        <option value="Books_and_Entertainments">Books and Entertainments</option>
		  </select>         	
		</div> 
           <br/>
                <center><input type="submit"  name="sub" value="Submit"/> </center>
            
          
            </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<%
String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
String title=request.getParameter("title");
String cost=request.getParameter("cost");
String desc=request.getParameter("desc");
String cname=request.getParameter("cname");
String category=request.getParameter("category");
String ecommerce=request.getParameter("sname");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");
PreparedStatement st=conn.prepareStatement("insert into product(title,cost,description,company_name,category,seller)values(?,?,?,?,?,?)");
st.setString(1, title);
st.setString(2,cost);
st.setString(3, desc);
st.setString(4, cname);
st.setString(5, category);
st.setString(6, ecommerce);
st.executeUpdate();
%>
<script>
//alert("Product Added Successfully");

</script>
<%

}
catch(Exception e)
{
out.println(e);

}
}
%>


</body>
</html>