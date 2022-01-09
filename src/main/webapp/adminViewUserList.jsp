<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.onlinefoodorder.model.User"%>
<%@page import="java.util.*"%>
<%@page import="com.onlinefoodorder.daoimpl.UserDaoimpl"%> 

<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin view User list</title>
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
            padding: 25.7px 18px;
        }
        li a{
            text-decoration: none;
            color:white;
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
        .detail{
        	padding-top : 100px;
        }
</style>
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
        <li><a href="deleterestaurant.jsp">Delete Restaurant</a></li>
        <li><a href="viewfoods.jsp">View food details</a></li>
        <li><a href="vieworders.jsp">View Orders</a>
</ul>
</aside>
<% 		
   String email = (String) session.getAttribute("emailid");
   UserDaoimpl userdao = new UserDaoimpl();
   List<User> userList = new ArrayList<User>();
   userList = userdao.viewSingleUser(email);
%>

<div class="detail">
<h3><b>User List</b></h3><br>
<%
int i = 0;
for (User viewSingleUser: userList ) {
i++;
%> 
<p>User name :<%=viewSingleUser.getUser_name()%></p><br>
<p>Phone Number :<%=viewSingleUser.getPhone_no()%></p><br>
<p>Address : <%=viewSingleUser.getAddress()%></p><br>
<p>Email address :<%=viewSingleUser.getEmail_address()%></p><br>
<p>Wallet : <%=viewSingleUser.getWallet()%></p>

<%
}
%>
</div>
</body>
</html>