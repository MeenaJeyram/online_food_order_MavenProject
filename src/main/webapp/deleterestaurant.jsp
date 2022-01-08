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
body{
    background-image: url("restaurantbackground.jpg");
    color: black;
    background-repeat: no-repeat;
    background-size: cover;
}
.input
{
    width: 100%;
    padding:4px 0;
    margin:4px 0;
    border-left:0;
    border-top:0;
    border-right:0;
    border-bottom: 1.5px solid black;
    outline:none;
    background: transparent;
}
form{
    color:black;
    font-size: 14px;
    border-radius: 5px;
    padding: 30px 20px;
    font-weight:bold;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: rgba(221, 228, 236, 0.363);
} 
ul{
     background-color: darkslategray;
     margin-top: 0;
     margin-bottom: 0;
   }
li{
     list-style:none;
 padding: 22.25px 18px;
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
   	margin-right: 30px;
}
.set1{
        	height:200px;
        	width:300px;
        	margin-left: 400px;
     }
</style>

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
<div class="set1">
	<form action="deleterestaurant" method="post">
	<h3>Delete Restaurant</h3>
		<label for="email">Restaurant Email Address</label><br><br>
		<input type="text" name="email" class="input" pattern="[A-Za-z]{5,}"><br><br>
		<button>Delete</button>
	</form>
</div>
</body>
</html>