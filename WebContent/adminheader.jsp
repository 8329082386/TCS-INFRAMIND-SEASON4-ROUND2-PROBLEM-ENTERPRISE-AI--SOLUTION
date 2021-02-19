<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@include file="Header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.min.js"></script>
<style>
h3{
color:#ffffff;
}
</style>
</head>
<body background=images/ecombg.jpg>
  <!-- Start Logo Section -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo text-center">
                           <h1 style="color:#ffffff">DASHBOARD</h1>
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Section -->
        
        
        <!-- Start Main Body Section -->
        <div class="mainbody-section text-center">
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-3">
                        
                        <div>
                            <a href="Add_Product.jsp">
                               <span style="color:#ffffff" class="glyphicon glyphicon-plus"></span>
							   <br/><br/>
                              <b><p style="color:#ffffff">ADD PRODUCT</p></b>
                            </a>
                        </div>
                        
                    </div>
                    
                    <div class="col-md-6">
                        
                        
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="menu-item color responsive">
                                    <a href="View_Product.jsp">
                                       <span style="color:#ffffff" class="glyphicon glyphicon-eye-open">
									   <br/><br/><br/>
                                       <b> <p style="color:#ffffff">VIEW PRODUCT</p></b>
                                    </a>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="menu-item light-orange responsive-2">
                                    <a href="Update_Product.jsp">
                                        <span style="color:#ffffff" class="glyphicon glyphicon-pencil">
										<br/><br/><br/>
                                       <b> <p style="color:#ffffff">UPDATE PRODUCT</p></b>
                                    </a>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="col-md-3">
                        
                        <div class="menu-item light-red">
                            <a href="Delete_Product.jsp">
                                 <span style="color:#ffffff" class="glyphicon glyphicon-trash">
								 <br/><br/><br/>
                               <b> <p style="color:#ffffff">DELETE PRODUCT</p></b>
                            </a>
                        </div>
                        
                       
                        
                    </div>
                </div>
                
                
                
                
                
                
            </div>
        </div>
        <!-- End Main Body Section -->
      
</body>
</html>