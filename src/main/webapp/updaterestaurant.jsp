<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
	margin:0;
	padding:0;
}
body{
    background-image: url("image/restaurantimge.jpg");
    color: black;
    background-repeat: no-repeat;
    background-size: cover;
}
.input
{
    width: 100%;
    padding:5px 0;
    margin:5px 0;
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
        	margin-right: 70px;
        }
        .set1{
        	height:250px;
        	width:510px;
        	margin-left: 400px;
        	border: 1px solid white;
        	padding-top : 20px;
        }
        .button{
        	padding:8px 213px;
        	border : 1px solid #2f4f4f;
        	background-color:#2f4f4f;
        	border-radius:4px;
        	color: white;
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
	<div class="set1">
	<form action="updaterestaurantdetail" method = "post">
            <h3>Restaurant Details</h3>
            <div class="details1">
                <label for="restaurantname">Restaurant name</label>
                <input type="text" name="restaurantname" class="input" pattern="[A-Za-z]{5,}" required><br><br>
                
                <label for="landline">Landline Nunber at restaurant</label>
                <input type="phone" name="landlineno" class="input" pattern="[0][1-5]{3}+[5-9]{6}" required><br><br>
                
                <label for="name">Owner Name</label>
                <input type="text" name="ownername" class="input" pattern="[A-Za-z]{3,}" required><br><br>
                
                <label>Mark open hours</label><br><br>
                <input type="radio" name="time" value="7am to 10pm" required>
                <label for="">7am to 10pm</label>
                <input type="radio" name="time" Value="8am to 10pm" required>
                <label for="">8am to 10pm</label>
                <input type="radio" name="time" Value="9am to 10pm" required>
                <label for="">9am to 10pm</label><br><br>
                
                <label for="email">Email address</label>
                <input type="email" name="email" class="input" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}" required><br><br>
                
                <label for="password">Password</label>
                <input type="password" name="password" class="input" pattern="[A-Za-z0-9]{8,10}" required><br><br>  
            </div>
    <button class="button">Update</button>
    </form>
    </div>
	
</body>
</html>