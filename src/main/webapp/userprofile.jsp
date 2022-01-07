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
</style>
</head>
<body>

<% 		
   int customerid = (int)session.getAttribute("Userid1");
   UserDaoimpl userdao = new UserDaoimpl();
   List<User> userList = new ArrayList<User>();
   userList = userdao.currentuserprofile(customerid);
%>
<div class ="t1">
<h3><b>My Profile</b></h3><br><br>
<div class="t2">
<%
	int i = 0;
	for (User currentuserprofile: userList ) {
	i++;
%>

<p>User name :<%=currentuserprofile.getUser_name()%></p><br>
<p>Phone Number :<%=currentuserprofile.getPhone_no()%></p><br>
<p>Address : <%=currentuserprofile.getAddress()%></p><br>
<p>Email address :<%=currentuserprofile.getEmail_address()%></p><br>
<p>Wallet : <%=currentuserprofile.getWallet()%></p>

<%
}
%>
</div>
</div>
</body>
</html>