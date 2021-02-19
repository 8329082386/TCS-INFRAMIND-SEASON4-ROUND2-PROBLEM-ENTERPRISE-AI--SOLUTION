<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

    <%@include file="Header.jsp" %>
<html>
<head>
  <title>E-Farm</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="content/js/jquery.min.js"></script>
<script src="content/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>
</head>
<body>
<%

HttpSession hs=request.getSession();
hs.setAttribute("pid", request.getParameter("pid"));

%>
  <div class="container">
  <h2>Upload Image Here</h2>
  <hr>
  <form action="UploadImage2.jsp" method="post"
                        enctype="multipart/form-data">
                      
<input type="file" name="file" size="50" />
<br />
<input type="submit" value="Upload File" />

  </div>

</body>
</html> 
