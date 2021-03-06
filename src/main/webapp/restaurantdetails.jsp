<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurant Registeration</title>
<link rel="stylesheet" href="restaurantdetails.css">
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

	<div class="set1">
    <form action="restaurantdetail" method = "post">
            <h3>Restaurant Regitration</h3>
            <div class="details1">
                <label for="restaurantname">Restaurant name</label>
                <input type="text" name="restaurantname" class="input" pattern="[A-Za-z]{5,}" required><br><br>
                <label for="area">Area</label>
                <input type="text" name="area" class="input" pattern="[0-9A-Za-z]{5,}" required><br><br>
                <label for="city">City</label>
                <input type="text" name="city" class="input" pattern="[A-Za-z]{4,}" required><br><br>
                <label for="pincode">Pincode</label>
                <input type="text" name="pincode" class="input" pattern="[0-9]{6}" required><br><br>
                <label for="landline">Landline Nunber at restaurant</label>
                <input type="phone" name="landlineno" class="input" pattern="[1-5]{4}+[5-9]{6}" required><br><br>
                <label for="name">Owner Name</label>
                <input type="text" name="ownername" class="input" pattern="[A-Za-z]{3,}" required><br><br>
                <h4>Mark open hours</h4>
                <input type="radio" name="time" value="7am to 10pm" required>
                <label for="">7am to 10pm</label>
                <input type="radio" name="time" Value="8am to 10pm" required>
                <label for="">10pm to 7am</label>
                <input type="radio" name="time" Value="9am to 10pm" required>
                <label for="">7am to 10pm & 10pm to 7am</label><br><br>
                <label for="email">Email address</label>
                <input type="email" name="email" class="input" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}" required><br><br>
                <label for="password">Password</label>
                <input type="password" name="password" class="input" pattern="[A-Za-z0-9]{8,10}" required><br><br>
                <label for="image">Image</label>
                <input type="file" name="image" class="input" required><br><br>           
            </div>
    <button class="button">Next</button>
    </form>
    </div>
</body>
</html>