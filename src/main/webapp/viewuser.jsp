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
#allusers table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
        }
</style>
</head>
<body>
<% UserDaoimpl userdao = new UserDaoimpl();
   List<User> userList = new ArrayList<User>();
   userList = userdao.viewUser();
%>


<table border="2" id="allusers">
	<h1><b>All User List</b></h1>
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


</body>
</html>
 
</body>
</html>