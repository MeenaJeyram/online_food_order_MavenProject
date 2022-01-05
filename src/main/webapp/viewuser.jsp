<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.onlinefoodorder.model.User"%>
<%@page import="java.util.*"%>
<%@page import="com.onlinefoodorder.daoimpl.UserDaoimpl"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USERS LIST PAGE</title>
<style>
		*{
			margin:0;
			padding:0;
		}
        ul{
            background-color: darkslategray;
            margin: 0;
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
        	margin-right: 70px;
        }
</style>
</head>
<body>
<aside>
<ul>
        <li><a href="viewuser.jsp">View all users</a></li>
        <li><a href="inactiveuser.jsp">Inactive users</a></li>
        <li><a href="restaurantdetails.jsp">Register Restaurant & foods</a></li>
        <li><a href="viewrestaurant.jsp">View all Restaurant details</a></li> 
        <li><a href="updaterestaurant.jsp">Edit Restaurant</a></li>
        <li><a href="deleterestaurant.jsp">Delete Restaurant</a></li>
        <li><a href="deletefooditem.jsp">Delete Food Items</a></li>
        <li><a href="viewfoods.jsp">View food details</a></li>
</ul>
</aside>
<% UserDaoimpl userdao = new UserDaoimpl();
   List<User> userList = new ArrayList<User>();
   userList = userdao.viewUser();
%>
<div class="t1">
<table>
	<h3><b>User List</b></h3>
	<thead>
	<tr>
  		<th >S.no</th>
		<th>User name</th>
		<th>Phone number</th>
		<th>Address</th>
		<th>Email address</th>
		<th>Password</th>
		<th>Wallet</th>
	</tr>
	</thead>
	<br><br>
<tbody>
<%
int i = 0;
for (User viewUser: userList ) {
i++;

%>
<tr>


<td><%=i%></td>
<td><%=viewUser.getUser_name()%></td>
<td><%=viewUser.getPhone_no()%></td>
<td> <%=viewUser.getAddress()%></td>
<td> <%=viewUser.getEmail_address()%></td>
<td> <%=viewUser.getPassword()%></td>
<td> <%=viewUser.getWallet()%></td>

</tr>

<%
}
%>
</tbody>
</table>
</div>
</body>
</html>