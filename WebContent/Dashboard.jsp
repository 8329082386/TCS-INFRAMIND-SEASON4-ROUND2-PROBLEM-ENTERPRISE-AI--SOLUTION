<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color:#337ab7;">
<div class="container">
 <%@include file="Header.jsp" %>
</div>


        <!-- Start Main Body Section -->
        <div class="mainbody-section text-center">
            <div class="container">
                
                
                
                
                
                <div class="row">
                
                <div class="col-md-4">
                <br/>
                <br/>
               <a href="ViewFeedback.jsp">  <img src="images/feedback.png" style="background-color:#ffffff; width:65%"></a>
                <br/>
               <b style="color:#ffffff"> Structured Based Analytics</b>
                </div>
               
                  <div class="col-md-4">
                  
                   <br/>
                <br/>
               <a href="ReviewsAnalysis.jsp">  <img src="images/reviews.png" style="background-color:#ffffff; width:65%"></a>
                <br/>
               <b style="color:#ffffff"> Reviews Analytics</b>
                  
                  </div>
                  
                   <div class="col-md-4">
                  
                   <br/>
                <br/>
               <a href="ImageClicks.jsp">  <img src="images/click.jpg" style="background-color:#ffffff; width:65%"></a>
                <br/>
               <b style="color:#ffffff"> Image Analytics</b>
                  
                  </div>
                </div>
            </div>
        </div>
        <!-- End Main Body Section -->
      
</body>
</html>