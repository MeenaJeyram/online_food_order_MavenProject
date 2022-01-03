<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="restaurantdetails.css">
</head>
<body>
<h2>Restaurant Information</h2>
    <form action="restaurantdetail" method = "post">
            <h3>Restaurant Details</h3>
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
                <input type="phone" name="landlineno" class="input" pattern="[0-5]{4}+[5-9]{6}" required><br><br>
                <label for="name">Owner Name</label>
                <input type="text" name="ownername" class="input" pattern="[A-Za-z]{5,}" required><br><br>
                <h4>Mark open hours</h4>
                <input type="radio" name="time" value="am to pm" required>
                <label for="">7am to 10pm</label>
                <input type="radio" name="time" Value="pm to am" required>
                <label for="">10pm to 7am</label>
                <input type="radio" name="time" Value="am and pm" required>
                <label for="">7am to 10pm & 10pm to 7am</label><br><br>
                <label for="email">Email address</label>
                <input type="email" name="email" class="input" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}" required><br><br>
                <label for="password">Password</label>
                <input type="password" name="password" class="input" pattern="[A-Za-z0-9]{8,10}" required><br><br>            
            </div>
    <button>Next</button>
    </form>
</body>
</html>