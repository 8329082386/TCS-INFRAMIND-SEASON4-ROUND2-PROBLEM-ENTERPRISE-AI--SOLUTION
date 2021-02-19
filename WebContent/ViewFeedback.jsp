<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body  style="background-color:#337ab7;">
 <div class="container">

 <%@include file="Header.jsp" %>
</div>
 <div class="container">
 <h2 style="color:#ffffff;">Feedback Given</h2>
 <hr>
 	<%@ page import="java.sql.*" %>
 	<table class="table">
 	<tr>
 	<td style="color:#ffffff"><b>Product</b></td>
 	<td style="color:#ffffff"><b>Would you like this product</b></td>
 	<td style="color:#ffffff"><b>Are you satiesfied with services</b></td>
 	<td style="color:#ffffff"><b>Would you recommend this product</b></td>
 	</tr>
 	<%
 	Connection conn;
 	try{
 		int likeyes=0,likeno=0,serviceyes=0,serviceno=0,ryes=0,rno=0;
 		float posrecommend=0;
 		float nosrecommend=0;
 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");

 
 PreparedStatement prstm67=conn.prepareStatement("delete from feedbackrecom");
 prstm67.executeUpdate();
 
Statement stm=conn.createStatement();
ResultSet rs=stm.executeQuery("select * from product");
while(rs.next()){
	likeyes=0;
	likeno=0;
	serviceyes=0;
	serviceno=0;
	ryes=0;
	rno=0;
	posrecommend=0;
	nosrecommend=0;
	PreparedStatement prstm=conn.prepareStatement("select * from feedback where pid=?");
	prstm.setString(1,rs.getString(1));
	ResultSet rs23=prstm.executeQuery();
	while(rs23.next()){
		//out.println(rs23.getString(2));
		if(rs23.getString(2).trim().contentEquals("Yes")){
			likeyes=likeyes+1;
		}else{
			likeno=likeno+1;
		}
		
		if(rs23.getString(4).trim().contentEquals("Yes")){
			serviceyes=serviceyes+1;
		}else{
			serviceno=serviceno+1;
		}
		if(rs23.getString(5).trim().contentEquals("Yes")){
			ryes=ryes+1;
		}else{
			rno=rno+1;
		}
		
		posrecommend=(likeyes+serviceyes+ryes)/3;
		
		nosrecommend=(likeno+serviceno+rno)/3;
		
		
		
		
	}
	PreparedStatement prstm45=conn.prepareStatement("insert into feedbackrecom(productname,precom,nrecom,pid)values(?,?,?,?)");
	prstm45.setString(1, ""+rs.getString(2));
	prstm45.setString(2, ""+posrecommend);
	prstm45.setString(3, ""+nosrecommend);
	prstm45.setString(4, ""+rs.getString(1));
	prstm45.executeUpdate();
	
%>
	<tr>
 	<td style="color:#ffffff">
 	<b><%
 	out.println(rs.getString(2));
 	%></b>
 	</td>
 	<td style="color:#ffffff"><b><%out.println("Yes="+likeyes);%>|<%out.println("No="+likeno);%></b></td>
 	<td style="color:#ffffff"><b><%out.println("Yes="+serviceyes);%>|<%out.println("No="+serviceno);%></b></td>
 	<td style="color:#ffffff"><b><%out.println("Yes="+ryes);%>|<%out.println("No="+rno);%></b></td>
 	</tr>

<% 

}

 
%>
</table>

<br/>
<br/>
<hr>
<h4 style="color:#ffffff">Positively Recommended Products Using Feedback Analysis</h4>

<hr>
<table class="table">
 	<tr>
 	<td style="color:#ffffff"><b>Product</b></td>
 	
 	</tr>
 <%
 Statement stm23=conn.createStatement();
 ResultSet rs23=stm23.executeQuery("select * from product");
 while(rs23.next()){
PreparedStatement prstm78=conn.prepareStatement("select * from feedbackrecom where pid=?");
prstm78.setString(1, rs23.getString(1));
ResultSet rs78=prstm78.executeQuery();
while(rs78.next()){
	
	String positive=rs78.getString(3);
	String negative=rs78.getString(4);
	
	float pos=Float.valueOf(positive);
	float neg=Float.valueOf(negative);
	
	if(pos>neg){
%>
<tr>
 	<td style="color:#ffffff"><b><%out.println(rs78.getString(2)); %></b></td>
 	
</tr>	
	

<% 
	}else{
	
 
	}
}
 
 }
	}catch(Exception e){
 		out.println(""+e);
 	}
 %>	
 	
 </table>
 </div>
</body>
</html>