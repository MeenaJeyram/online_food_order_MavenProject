<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action ="register" method = "post" id="resgister" class="userRegister">
        <label>Name</label>
        <input type="text" id="username" name="username" class="input"><br><br>
        <label>Phone Number</label>
        <input type="phone" name="phonenumber" class="input"><br><br>
        <label>Address</label>
        <input type="text" name="address" class="input"><br><br>
        <label>Email Address</label>
        <input type="email" name="email" class="input"><br><br>
        <label>Password</label>
        <input type="password" class="input" name="password"><br><br>
        <button type='submit'class='submit-btn'>Register</button>
    </form>
</body>
</html>