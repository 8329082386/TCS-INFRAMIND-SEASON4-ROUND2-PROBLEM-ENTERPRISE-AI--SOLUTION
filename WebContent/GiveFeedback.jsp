<%!
	String uname="";
	String uid="";
	%>
	<%
	try{
	HttpSession hs=request.getSession();
     uname=hs.getAttribute("name").toString();
     uid=hs.getAttribute("uid").toString();
   if(uname.contentEquals("")){
	   
   }
	}catch(Exception e){
		response.sendRedirect("CustomerLogin.jsp");
	}
	%>
	

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!--Less styles -->
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
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
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong>  <%out.println(uname); %></strong></div>
	<div class="span6">
	<div class="pull-right">
		
		
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.html"><img src="themes/images/logo.png" alt="Bootsshop"/></a>

    <ul id="topMenu" class="nav pull-right">
<a href="MyOrders.jsp" role="button"  style="padding-right:0"><span class="btn btn-large btn-success">My Orders</span></a>
	 <a href="LogOut.jsp" role="button"  style="padding-right:0"><span class="btn btn-large btn-success">Log Out</span></a>
	 <li class="">
	
	<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
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
</div>
</div>
</div>
<!-- Header End====================================================================== -->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
	
				<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu open"><a> ELECTRONICS</a>
				<ul>
				<li><a class="active" href="GetProductByCategory.jsp?cat=Cameras"><i class="icon-chevron-right"></i>Cameras  </a></li>
				<li><a href="GetProductByCategory.jsp?cat=Computers_Tablet_Laptop"><i class="icon-chevron-right"></i>Computers, Tablets & laptop </a></li>
				<li><a href="GetProductByCategory.jsp?cat=Mobile_Phone"><i class="icon-chevron-right"></i>Mobile Phone </a></li>
				<li><a href="GetProductByCategory.jsp?cat=Sound_Vision"><i class="icon-chevron-right"></i>Sound & Vision </a></li>
				</ul>
			</li>
			<li class="subMenu"><a> CLOTHES  </a>
			<ul style="display:none">
				<li><a href="GetProductByCategory.jsp?cat=Women_Clothing"><i class="icon-chevron-right"></i>Women's Clothing </a></li>
				<li><a href="GetProductByCategory.jsp?cat=Women_Shoes"><i class="icon-chevron-right"></i>Women's Shoes </a></li>												
				<li><a href="GetProductByCategory.jsp?cat=Women_Hand_Bags"><i class="icon-chevron-right"></i>Women's Hand Bags </a></li>	
				<li><a href="GetProductByCategory.jsp?cat=Mens_Clothing"><i class="icon-chevron-right"></i>Men's Clothings  </a></li>
				<li><a href="GetProductByCategory.jsp?cat=Mens_Shoes"><i class="icon-chevron-right"></i>Men's Shoes </a></li>												
				<li><a href="GetProductByCategory.jsp?cat=Kids_Clothing"><i class="icon-chevron-right"></i>Kids Clothing </a></li>												
				<li><a href="GetProductByCategory.jsp?cat=Kids_Shoes"><i class="icon-chevron-right"></i>Kids Shoes </a></li>												
			</ul>
			</li>
			<a href="GetProductByCategory.jsp?cat=Food_and_Beverage"><li class="subMenu">FOOD AND BEVERAGES </a>
				
			</li>
			<li><a href="GetProductByCategory.jsp?cat=Health_and_Beauty">HEALTH & BEAUTY </a></li>
			<li><a href="GetProductByCategory.jsp?cat=Sport_and_Leisure">SPORTS & LEISURE </a></li>
			<li><a href="GetProductByCategory.jsp?cat=Books_and_Entertainments">BOOKS & ENTERTAINMENTS </a></li>
		</ul>
		<br/>
		 
			
			
	</div>
<!-- Sidebar end=============================================== -->
	<div class="span9">
  
	<div class="row">	
	<%@ page import="java.sql.*" %>
<%!

Connection conn;
String title,cost,desc,companyname,category;
%>
	<%
try{
Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");
}catch(Exception e){
	out.println(""+e);
}
String str1=request.getParameter("pid");
Statement stm=conn.createStatement();
ResultSet rs=stm.executeQuery("select * from product where uid="+str1);
while(rs.next()){
	title=rs.getString(2);
	cost=rs.getString(3);
	desc =rs.getString(4);
	companyname=rs.getString(5);
	category=rs.getString(6);
	
}
String dpimage="";
Statement stm12=conn.createStatement();
ResultSet rs12=stm12.executeQuery("select * from images where pid="+str1);
while(rs12.next()){
	dpimage=rs12.getString(2);
	//out.println(dpimage);
}
%>

			<div class="span6">
				
				
				<form>
				<input type="hidden" name="pid" value="<%out.println(request.getParameter("pid")); %>">
				Would you like this product?
				<br/>
				<select name="product" class="form-control">
				<option>Yes</option>
				<option>No</option>
				</select>
				<br/>
				Are you Satisfied with service?
				<br/>
				<select name="service" class="form-control">
				<option>Yes</option>
				<option>No</option>
				</select>
				<br/>
				would you recommende this product to your friend?
				<br/>
				<select name="recommend" class="form-control">
				<option>Yes</option>
				<option>No</option>
				</select>
					<br/>
				Did you find the product you were looking for?
				<br/>
				<select name="didproduct" class="form-control">
				<option>Yes</option>
				<option>No</option>
				</select>
				<br/>
				Would you rate this deal positive?
				<br/>
				<select name="dealrate" class="form-control">
				<option>Yes</option>
				<option>No</option>
				</select>
				<br/>
				Did You gate everything in product that you wanted?
				<br/>
				<select name="everything" class="form-control">
				<option>Yes</option>
				<option>No</option>
				</select>
				<br/>
				<br/>
				<textarea name="review" rows="" cols="" class="form-control" placeholder="Enter Your valuable reviews"></textarea>
				<br/>
				<input type="submit" value="Submit" name="sub">
				</form>
				<%@ page import="java.sql.*" %>
				<%
				String str22=request.getParameter("sub");
				Connection conn;
				if(str22!=null){
					
					try{
						Class.forName("com.mysql.jdbc.Driver");
						conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");
						PreparedStatement prstm=conn.prepareStatement("insert into feedback (likeproduct,service,recommend,pid,didfindproduct,dealrate,geteverything)values(?,?,?,?,?,?,?);");
					    prstm.setString(1, request.getParameter("product").trim());
					    prstm.setString(2, request.getParameter("service").trim());
					    prstm.setString(3, request.getParameter("recommend").trim());
					    prstm.setString(4, request.getParameter("pid").trim());
					    prstm.setString(5, request.getParameter("didproduct").trim());
					    prstm.setString(6, request.getParameter("dealrate").trim());
					    prstm.setString(7, request.getParameter("everything").trim());
						prstm.executeUpdate();
						
						PreparedStatement prstm11=conn.prepareStatement("insert into reviews (pid,review)values(?,?);");
					    prstm11.setString(1, request.getParameter("pid").trim());
					    prstm11.setString(2, request.getParameter("review").trim());
						prstm11.executeUpdate();
						
						
					%>
					<script>
					
					alert("Thanks For your valuable feedback")
					window.location="index.jsp";
					</script>
					
					<%
					   
					}catch(Exception e){
							out.println(""+e);
						}
					
				}
				
				
				
				
				%>
				
				
				
			
			
			</div>
			
			

	</div>
</div>
</div> </div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<div class="row">
			<div class="span3">
				<h5>ACCOUNT</h5>
				<a href="login.html">YOUR ACCOUNT</a>
				<a href="login.html">PERSONAL INFORMATION</a> 
				<a href="login.html">ADDRESSES</a> 
				<a href="login.html">DISCOUNT</a>  
				<a href="login.html">ORDER HISTORY</a>
			 </div>
			<div class="span3">
				<h5>INFORMATION</h5>
				<a href="contact.html">CONTACT</a>  
				<a href="register.html">REGISTRATION</a>  
				<a href="legal_notice.html">LEGAL NOTICE</a>  
				<a href="tac.html">TERMS AND CONDITIONS</a> 
				<a href="faq.html">FAQ</a>
			 </div>
			<div class="span3">
				<h5>OUR OFFERS</h5>
				<a href="#">NEW PRODUCTS</a> 
				<a href="#">TOP SELLERS</a>  
				<a href="special_offer.html">SPECIAL OFFERS</a>  
				<a href="#">MANUFACTURERS</a> 
				<a href="#">SUPPLIERS</a> 
			 </div>
			<div id="socialMedia" class="span3 pull-right">
				<h5>SOCIAL MEDIA </h5>
				<a href="#"><img width="60" height="60" src="themes/images/facebook.png" title="facebook" alt="facebook"/></a>
				<a href="#"><img width="60" height="60" src="themes/images/twitter.png" title="twitter" alt="twitter"/></a>
				<a href="#"><img width="60" height="60" src="themes/images/youtube.png" title="youtube" alt="youtube"/></a>
			 </div> 
		 </div>
		<p class="pull-right">&copy; Bootshop</p>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	
	<!-- Themes switcher section ============================================================================================= -->
<div id="secectionBox">
<link rel="stylesheet" href="themes/switch/themeswitch.css" type="text/css" media="screen" />
<script src="themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
	<div id="themeContainer">
	<div id="hideme" class="themeTitle">Style Selector</div>
	<div class="themeName">Oregional Skin</div>
	<div class="images style">
	<a href="themes/css/#" name="bootshop"><img src="themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
	<a href="themes/css/#" name="businessltd"><img src="themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
	</div>
	<div class="themeName">Bootswatch Skins (11)</div>
	<div class="images style">
		<a href="themes/css/#" name="amelia" title="Amelia"><img src="themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spruce" title="Spruce"><img src="themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
		<a href="themes/css/#" name="superhero" title="Superhero"><img src="themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cyborg"><img src="themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cerulean"><img src="themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="journal"><img src="themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="readable"><img src="themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>	
		<a href="themes/css/#" name="simplex"><img src="themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="slate"><img src="themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spacelab"><img src="themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="united"><img src="themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
		<p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
	</div>
	<div class="themeName">Background Patterns </div>
	<div class="images patterns">
		<a href="themes/css/#" name="pattern1"><img src="themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
		<a href="themes/css/#" name="pattern2"><img src="themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern3"><img src="themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern4"><img src="themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern5"><img src="themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern6"><img src="themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern7"><img src="themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern8"><img src="themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern9"><img src="themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern10"><img src="themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern11"><img src="themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern12"><img src="themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern13"><img src="themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern14"><img src="themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern15"><img src="themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern16"><img src="themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern17"><img src="themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern18"><img src="themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern19"><img src="themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern20"><img src="themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>
		 
	</div>
	</div>
</div>
<span id="themesBtn"></span>
</body>
</html>