<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet" href="admin.css">
</head>
</head>
<body>
<aside>
<ul>
        <li><a href="viewuser.jsp">View users & Search User</a></li>
        <li><a href="inactiveuser.jsp">Inactive users</a></li>
        <li><a href="restaurantdetails.jsp">Register Restaurant</a></li>
        <li><a href="addfooditems.jsp">Add Food Items</a></li>
        <li><a href="viewrestaurant.jsp">View all Restaurant details</a></li> 
        <li><a href="updaterestaurant.jsp">Edit Restaurant</a></li>
        <li><a href="deleterestaurant.jsp">Inactive Restaurant</a></li>
        <li><a href="viewfoods.jsp">View food details</a></li>
        <li><a href="vieworders.jsp">View Orders</a>
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