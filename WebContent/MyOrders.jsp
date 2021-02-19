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

<br/><br/>

<div class="navbar-inner">
    <a class="brand" href="index.jsp"><img src="themes/images/logo.png" alt="Bootsshop"/></a>
		
    <ul id="topMenu" class="nav pull-right">
	<a href="MyOrders.jsp" role="button"  style="padding-right:0"><span class="btn btn-large btn-success">My Orders</span></a>
	 <a href="LogOut.jsp" role="button"  style="padding-right:0"><span class="btn btn-large btn-success">Log Out</span></a>
	<div id="login" class="modal hide fade in"  aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Login Block</h3>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal loginFrm">
			  <div class="control-group">								
				<input type="text" id="inputEmail" placeholder="Email">
			  </div>
			  <div class="control-group">
				<input type="password" id="inputPassword" placeholder="Password">
			  </div>
			  <div class="control-group">
				<label class="checkbox">
				<input type="checkbox"> Remember me
				</label>
			  </div>
			</form>		
			<button type="submit" class="btn btn-success">Sign in</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		  </div>
	</div>
	</li>
    </ul>
  </div>

<table class="table">
<tr>
<td> Image</td>
<td> Product Name</td>
<td> Cost</td>
<td> Action</td>
</tr>
<%@page import="java.sql.*"%>
<%
HttpSession hs=request.getSession();
String uid=hs.getAttribute("uid").toString();

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root","root");
PreparedStatement prstm=conn.prepareStatement("select * from orders where uid=?");
prstm.setString(1,uid);
ResultSet rs=prstm.executeQuery();
while(rs.next()){
%>
<tr>
<td><%out.println(rs.getString(1)); %></td>
<td><%out.println(rs.getString(2)); %></td>
<td> <%out.println(rs.getString(3)); %></td>
<td> 
<a href="GiveFeedback.jsp?pid=<%out.println(rs.getString(6)); %>"><input type="submit" value="Give Feedback"></a>
			

</td>
</tr>

<%} %>
</table>




</div>
</body>