<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.onlinefoodorder.model.User"%>
<%@page import="java.util.*"%>
<%@page import="com.onlinefoodorder.daoimpl.UserDaoimpl"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin view User list</title>
<style>
		*{
			margin:0;
			padding:0;
		}
</style>
</head>
<body>

<% 		
   String email = (String) session.getAttribute("emailid");
   UserDaoimpl userdao = new UserDaoimpl();
   List<User> userList = new ArrayList<User>();
   userList = userdao.viewSingleUser(email);
%>
<div class ="t1">
<h3><b>User List</b></h3>
<div class="t2">

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
<
</div>
</div>
</body>
</html>