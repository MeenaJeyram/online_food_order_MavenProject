<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="fooditems.css">
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
 <h2>Outlet type & Timing</h2> 
    <form action = "foodorderserv" method = "post">   
            <h3>Types of Cuisines</h3>
            <label for ="foodname">Food name</label>
            <input type="text" class="input" name ="foodname"><br><br>
            <label for="cuisine">Select cuisine types</label><br><br>
            <input type="radio" class="food" name ="cuisine" value="Indian" >
            <label for="cuisine">Indian</label>
            <input type="radio" class="food" name ="cuisine" value="Chinese">
            <label for="cuisine">Chinese</label>
            <input type="radio" class="food" name ="cuisine" value="Italian">
            <label for="cuisine">Italian</label><br><br>
            <input type="radio" class="food"name ="cuisine" value="French">
            <label for="cuisine">French</label>
            <input type="radio" class="food" name ="cuisine" value="Spanish">
            <label for="cuisine">spanish</label>
            <input type="radio" class="food" name ="cuisine" value="Turkish">
            <label for="cuisine">Turkish</label><br><br>
            <input type="radio" class="food" name ="cuisine" value="Thai">
            <label for="cuisine">Thai</label>
            <input type="radio" class="food" name ="cuisine" value="Moroccan">
            <label for="cuisine">Moroccan</label>
            <input type="radio" class="food" name ="cuisine" value="Turkish">
            <label for="cuisine">Turkish</label><br><br>
            <label for="description">Description</label>
            <input type="text" class="input" name="description"><br><br>
            <label for="price">Price</label>
            <input type="text" class="input" name="price">
            <label for="image">Image</label>
            <input type="file" name="foodimage" class="input" required><br><br>
            <input type = "submit">
    </form>
    </div>
</body>
</html>