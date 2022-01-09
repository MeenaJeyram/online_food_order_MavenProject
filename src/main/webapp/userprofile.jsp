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
.detail{
	border: 1px solid rgba(221, 228, 236, 0.363);
	color:black;
    font-size: 14px;
    border-radius: 5px;
    padding: 30px 20px;
    font-weight:bold;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: rgba(221, 228, 236, 0.363);
    margin: 100px 500px;
		}
 .button{
 			padding: 7px 133px;
        	border : 1px solid #2f4f4f;
        	background-color:#2f4f4f;
        	border-radius:4px;
        	color: white;
        	cursor: pointer;
        }
 button:hover {
 			 opacity: 0.8;
		}
button a{
      text-decoration: none;
      color:white;
      font-size:15px;
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
<div class="detail">
<p>User name       :<%=currentuserprofile.getUser_name()%></p><br>
<p>Phone Number    :<%=currentuserprofile.getPhone_no()%></p><br>
<p>Address         : <%=currentuserprofile.getAddress()%></p><br>
<p>Email address   :<%=currentuserprofile.getEmail_address()%></p><br>
<p>Wallet          : <%=currentuserprofile.getWallet()%></p><br><br>
<button class="button"><a href="showfoods.jsp"><i>Back</i></a></button>
</div>


<%
}
%>
</div>
</div>
</body>
</html>