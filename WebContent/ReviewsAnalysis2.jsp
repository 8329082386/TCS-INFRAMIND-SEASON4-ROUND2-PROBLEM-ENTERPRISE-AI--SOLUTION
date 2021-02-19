<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body style="background-color:#337ab7;">
<div class="container">
 <%@include file="Header.jsp" %>
</div>
 <div class="container">
 <h2 style="color:#ffffff;">Feedback Given</h2>
 <hr>
 	<%@ page import="java.sql.*" %>
 	<table class="table">
 	<tr>
 	<td style="color:#ffffff"><b>Product Name</b></td>
 	<td style="color:#ffffff"><b>Reviews Extracted</b></td>
 	<td style="color:#ffffff"><b>Good Reviews</b></td>
 	<td style="color:#ffffff"><b>Better Reviews</b></td>
 	<td style="color:#ffffff"><b>Best Reviews</b></td>
 	<td style="color:#ffffff"><b>Bad Reviews</b></td>
 	<td style="color:#ffffff"><b>Total Reviews Extracted</b></td>
 	
 	</tr>
 	<%
 	Connection conn;
 	try{
String reviews="",afterstopword="";
 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/ecommerce", "root","root");

int good=0,bad=0,best=0,better=0,total=0;
 
PreparedStatement prstm67=conn.prepareStatement("delete from reviewsresult");
prstm67.executeUpdate();



Statement stm=conn.createStatement();
ResultSet rs=stm.executeQuery("select * from product");
while(rs.next()){
	good=0;
	bad=0;
	best=0;
	better=0;
	total=0;
	reviews="";
	PreparedStatement prstm=conn.prepareStatement("select * from reviews where pid=?");
	prstm.setString(1,rs.getString(1));
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
			
			if(rs23.getString(3).toLowerCase().trim().contains(revset.getString(2).toLowerCase().trim())){
				
			
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

	
%>
	<tr>
 	<td style="color:#ffffff">
 	<b><%
 	out.println(rs.getString(2));
 	%></b>
 	</td>
 	 	<td style="color:#ffffff">
 		<b><%
 	out.println(reviews);
 	%></b>
 	</td>
 	<td style="color:#ffffff"><b><%out.println(good); %></b></td>
 	<td style="color:#ffffff"><b><%out.println(better); %></b></td>
 	<td style="color:#ffffff"><b><%out.println(best); %></b></td>
 	<td style="color:#ffffff"><b><%out.println(bad); %></b></td>
 	<td style="color:#ffffff"><b><%out.println(total); %></b></td>
 	
 	<td style="color:#ffffff"><b><a href="ViewGraph.jsp?good=<%out.println(good);%>&bad=<%out.println(bad);%>&best=<%out.println(best);%>&better=<%out.println(better);%>&total=<%out.println(total);%>"><input type="button" value="View Graph"></a></b></td>
 	
 	</tr>

<% 
double count11=(good+better+best+bad);
count11=count11/total;
PreparedStatement prstm78=conn.prepareStatement("insert into reviewsresult(productname,good,better,best,bad,ration,pid,category)values(?,?,?,?,?,?,?,?)");
prstm78.setString(1, ""+rs.getString(2));
prstm78.setString(2, ""+good);
prstm78.setString(3, ""+better);
prstm78.setString(4, ""+best);
prstm78.setString(5, ""+bad);
prstm78.setString(6, ""+count11);
prstm78.setString(7, ""+rs.getString(1));
prstm78.setString(8, ""+rs.getString(6));
prstm78.executeUpdate();




}
 	}catch(Exception e){
 		out.println(""+e);
 	}

 
%>
</table>

<br/>
<br/>


 </div>
</body>
</html>