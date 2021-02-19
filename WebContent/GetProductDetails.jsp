
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
	<div class="span6">Welcome!<strong> <%out.println(uname); %></strong></div>
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
    <a class="brand" href="index.jsp"><img src="themes/images/logo.png" alt="Bootsshop"/></a>

    <ul id="topMenu" class="nav pull-right">
     <a href="LogOut.jsp" role="button"  style="padding-right:0"><span class="btn btn-large btn-success">Logout</span></a>
<a href="MyOrders.jsp" role="button"  style="padding-right:0"><span class="btn btn-large btn-success">My Orders</span></a>
	
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
				<li><a href="GetProductByCategory.jsp?cat=Sound_Vision"><i class="icon-chevron-right"></i>Sound & Vision )</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> CLOTHES  </a>
			<ul style="display:none">
				<li><a href="GetProductByCategory.jsp?cat=Women_Clothing"><i class="icon-chevron-right"></i>Women's Clothing </a></li>
				<li><a href="GetProductByCategory.jsp?cat=Women_Shoes"><i class="icon-chevron-right"></i>Women's Shoes </a></li>												
				<li><a href="GetProductByCategory.jsp?cat=Women_Hand_Bags"><i class="icon-chevron-right"></i>Women's Hand Bags</a></li>	
				<li><a href="GetProductByCategory.jsp?cat=Mens_Clothing"><i class="icon-chevron-right"></i>Men's Clothings </a></li>
				<li><a href="GetProductByCategory.jsp?cat=Mens_Shoes"><i class="icon-chevron-right"></i>Men's Shoes </a></li>												
				<li><a href="GetProductByCategory.jsp?cat=Kids_Clothing"><i class="icon-chevron-right"></i>Kids Clothing </a></li>												
				<li><a href="GetProductByCategory.jsp?cat=Kids_Shoes"><i class="icon-chevron-right"></i>Kids Shoes</a></li>												
			</ul>
			</li>
			<a href="GetProductByCategory.jsp?cat=Food_and_Beverage"><li >FOOD AND BEVERAGES </a>
				
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
String title,cost,desc,companyname,category,image,pname,pcost,pid;


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
	pname=rs.getString(2);
	
	
}
String dpimage="";
Statement stm12=conn.createStatement();
ResultSet rs12=stm12.executeQuery("select * from images where pid="+str1);
while(rs12.next()){
	dpimage=rs12.getString(2);
	//out.println(dpimage);
}
%>
			<div id="gallery" class="span3">
            <a href="" title="">
			<a href="images/<%out.println(dpimage); %>"><img src="images/<%out.println(dpimage); %>" style="width:100px;height:100px"/></a>	
            </a>
			<div id="differentview" class="moreOptopm carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                  <%
                  Statement stm2=conn.createStatement();
                  ResultSet rs2=stm2.executeQuery("select * from images where pid="+str1);
                  while(rs2.next()){
                     image=rs2.getString(2);
                  %>
                   <a href="images/<%out.println(dpimage); %>"> <img style="width:29%" src="images/<%out.println(rs2.getString(2)); %>" alt=""/></a>
                  <%} %>
                  </div>
                  <div class="item">
                  
                  </div>
                </div>
              <!--  
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a> 
			  -->
              </div>
			  
			 <div class="btn-toolbar">
			  
			</div>
			</div>
			<div class="span6">
				<h3><%out.println(title); %>  </h3>
				<small></small>
				<hr class="soft"/>
				<form class="form-horizontal qtyFrm">
				  <div class="control-group">
					<label class="control-label"><span>Cost : <%out.println(cost); %></span></label>
					
				  </div>
				</form>
				
				<hr class="soft"/>
				
				<form class="form-horizontal qtyFrm pull-right">
				  <div class="control-group">
					
					<div class="controls">
					 
					</div>
				  </div>
				</form>
				
				<p>
				<b>Description : <%out.println(desc); %></b>
				<hr>
				<b>Category :<%out.println(category); %></b>
				<hr>
				<h3>Add your cost</h3>		
				
				<%
				
				String str34=request.getParameter("notify");
				if(str34!=null){
					
					try{
					HttpSession hs=request.getSession();
					String pid1 =request.getParameter("pid");
					String acost=request.getParameter("acost");
					String cnumber=hs.getAttribute("cnumber").toString();
					String uid=hs.getAttribute("uid").toString();
					String cname=hs.getAttribute("name").toString();
					
					PreparedStatement prstm=conn.prepareStatement("insert into lockproduct(productid,Acost,uid,ucontact,product)values(?,?,?,?,?)");
					prstm.setString(1, pid1);
					prstm.setString(2, acost);
					prstm.setString(3, uid);
					prstm.setString(4, cnumber);
					prstm.setString(5, request.getParameter("pname"));
					prstm.executeUpdate();
					%>
					<script>
					alert("You notification submitted sucessfully");
					
					</script>
					<% 
					
					}catch(Exception e){
						out.println(""+e);
					}
					
				}
				
				
				%>
				<form>
				<input type="text" name="acost" class="form-control" placeholder="Enter your Aceepted Cost">
				<br/>
				<input type="text" name="pid"  class="form-control" value="<%out.println(request.getParameter("pid")); %>">
				<br/>
				<input type="text" name="pname" class="form-control" value="<%out.println(pname); %>">
				<br/>
				<input type="submit" name="notify" class="form-control" value="Notify me at my Cost">
				
				</form>
				</p>
				
				
				<a href="OnlineTransaction.jsp?pid=<%out.println(request.getParameter("pid")); %>&img=<%out.println(image); %>&cost=<%out.println(cost);%>&title=<%out.println(title);%>"><input class="btn btn-success" type="button" value="Buy Product"></a>
				<br/>
				<br/>
		
				
				
<h3>Recommended Product</h3>
				
<%
 	Connection conn;
 	try{
String reviews="",afterstopword="";
 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");

int good=0,bad=0,best=0,better=0,total=0;
 
PreparedStatement prstm67=conn.prepareStatement("delete from reviewsresult");
prstm67.executeUpdate();



Statement stm11=conn.createStatement();
ResultSet rs11=stm11.executeQuery("select * from product");
while(rs11.next()){
	good=0;
	bad=0;
	best=0;
	better=0;
	total=0;
	reviews="";
	PreparedStatement prstm=conn.prepareStatement("select * from reviews where pid=?");
	prstm.setString(1,rs11.getString(1));
	ResultSet rs23=prstm.executeQuery();
	while(rs23.next()){
		total=total+1;
		
		
		//out.println(rs23.getString(2));
		/*if(rs23.getString(3).contains("Nice")){
			
				good=good+1;
		}
		*/
		PreparedStatement revprstm=conn.prepareStatement("select * from words");
		ResultSet revset=revprstm.executeQuery();
		while(revset.next()){
			
			if(rs23.getString(3).contains(revset.getString(2))){
				
			
				if(revset.getString(3).contentEquals("Good")){
					good=good+1;
				}
				if(revset.getString(3).contentEquals("Better")){
					better=better+1;
				}
				if(revset.getString(3).contentEquals("Best")){
					best=best+1;
				}
				if(revset.getString(3).contentEquals("Bad")){
					bad=bad+1;
				}
				
				
			}
			
		}
				
			
		reviews=reviews+" | "+rs23.getString(3);
	
		
		
		
	}

	
 
double count11=(good+better+best+bad);
count11=count11/total;
PreparedStatement prstm78=conn.prepareStatement("insert into reviewsresult(productname,good,better,best,bad,ration,pid,category)values(?,?,?,?,?,?,?,?)");
prstm78.setString(1, ""+rs11.getString(2));
prstm78.setString(2, ""+good);
prstm78.setString(3, ""+better);
prstm78.setString(4, ""+best);
prstm78.setString(5, ""+bad);
prstm78.setString(6, ""+count11);
prstm78.setString(7, ""+rs11.getString(1));
prstm78.setString(8, ""+rs11.getString(6));
prstm78.executeUpdate();
}
%>

<table class="table">
<tr>
<td>Product</td>
<td>Action</td>
</tr>
<%

PreparedStatement prst98=conn.prepareStatement("select * from reviewsresult where category=? order by ration desc");
prst98.setString(1, category);
ResultSet rs83=prst98.executeQuery();
while(rs83.next()){
	if(rs83.getString(3).contentEquals("0")){
		
	}else{
%>	
	<tr>
<td><%out.println("<b>"+rs83.getString(2)+"</b>"); %></td>
<td><a href="GetProductDetails.jsp?pid=<% out.println(rs83.getString(8)); %>"><input class="btn btn-success" type="button" value="Get Details"></a></td>
<td><%out.println(""+rs83.getString(3)); %></td>
</tr>
	
<% 	
	}
}



 	}catch(Exception e){
 		out.println(""+e);
 	}

 
%>	
				
</table>				
				
				
				
				
				
				
				
				
				
				
				
				
			
			</div>
			
			

	</div>
</div>
</div> </div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
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