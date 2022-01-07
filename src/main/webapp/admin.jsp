<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
		*{
			margin:0;
			padding:0;
		}
       ul{
            background-color: darkslategray;
            margin:0;
        }
        li{
            list-style:none;
            padding: 30px 18px;
        }
        li a{
            text-decoration: none;
            color:white;
        }
   	 	td, th{
        	padding: 10px;
        }
        aside{
        	float:left;
        	margin-right: 380px;
        }
        h1{
        	border:1px solid white;
        	padding-top:220px;
        	padding-bottom: 20px;
        }
        h4{
        	
        }
</style>
</head>
<body>
<aside>
<ul>
        <li><a href="viewuser.jsp">View all users</a></li>
        <li><a href="adminViewUser.jsp">Search User</a></li>
        <li><a href="inactiveuser.jsp">Inactive users</a></li>
        <li><a href="restaurantdetails.jsp">Register Restaurant & foods</a></li>
        <li><a href="viewrestaurant.jsp">View all Restaurant details</a></li> 
        <li><a href="updaterestaurant.jsp">Edit Restaurant</a></li>
        <li><a href="deleterestaurant.jsp">Delete Restaurant</a></li>
        <li><a href="deletefooditem.jsp">Delete Food Items</a></li>
        <li><a href="viewfoods.jsp">View food details</a></li>
</ul>
</aside>
    <h1>Welcome Admin..</h1>
    <%!
		String flag1;
	%>
	<%
		if(session.getAttribute("user") != null){
		flag1 = session.getAttribute("user").toString();
	%>
		<h4><%=flag1%></h4>
	<% }%>
 
	<%session.removeAttribute("user");
    %>
    <%!
		String flag2;
	%>
	<%
		if(session.getAttribute("updaterestaurant") != null){
		flag2 = session.getAttribute("updaterestaurant").toString();
	%>
		<h4><%= flag2 %></h4>
	<% }%>
 
	<%session.removeAttribute("updaterestaurant");
    %>
    
    <%!
		String flag3;
	%>
	<%
		if(session.getAttribute("deleterestaurant") != null){
		flag3 = session.getAttribute("deleterestaurant").toString();
	%>
		<h4><%= flag3 %></h4>
	<% }%>
 
	<%session.removeAttribute("deleterestaurant");
    %>
    
     <%!
		String flag4;
	%>
	<%
		if(session.getAttribute("deletefooditem") != null){
		flag4 = session.getAttribute("deletefooditem").toString();
	%>
		<h4><%= flag3 %></h4>
	<% }%>
 
	<%session.removeAttribute("deletefooditem");
    %>
</body>
</html>