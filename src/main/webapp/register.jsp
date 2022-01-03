<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="register.css">
</head>
<body>
	<form action ="register" method = "post" id="resgister" class="userRegister">
        <label>Name</label>
        <input type="text" id="username" name="username" class="input" pattern="[A-Za-z]{5,}" required><br><br>
        <label>Phone Number</label>
        <input type="phone" name="phonenumber" class="input" pattern="[6-9][0-9]{9}" required><br><br>
        <label>Address</label>
        <input type="text" name="address" class="input" patteern = "[A-Za-z0-9]{4,}+[,][A-Za-z]{4,}+[,][0-9]{6}+{20,}" required><br><br>
        <label>Email Address</label>
        <input type="email" name="email" class="input" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}" required><br><br>
        <label>Password</label>
        <input type="password" class="input" name="password" pattern="[A-Za-z0-9]{8,10}" required><br><br>
        <label>User Wallet</label>
        <input type="number" class="input" name="wallet" pattern="[0-9]{1,10}" required><br><br>
        <button>Register</button>
    </form>
</body>
</html>