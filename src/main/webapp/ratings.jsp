<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="rating" method="post">
	<label for="text">Restaurant name</label><br><br>
	<input type="text" name="restaurantname" class="input" pattern="[A-Za-z]{5,}" required>
	<label for="rating">Ratings</label><br><br>
	<input type="text" name="rating" class="input" pattern="[0-5]" required>
	<button type="submit">Add</button>
</form>
</body>
</html>