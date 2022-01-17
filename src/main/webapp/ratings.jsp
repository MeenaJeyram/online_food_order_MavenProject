<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurant Ratings</title>
<style>
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
.set1{
        	height:200px;
        	width:300px;
        	margin-left: 400px;
     }
     .button{
        	padding:7px 115px;
        	background-color:#2f4f4f;
        	border-radius:4px;
        	color: white;
        	cursor: pointer;
        }
        .btn{
        	display: inline-flex;
        }
     	button:hover {
 			 opacity: 0.8;
		}
		button a{
			text-decoration: none;
			link-style: none;
			color: white;
		} 
</style>
</head>
<body>
<div class="set1">
<form action="rating" method="post">
	<label for="text">Restaurant name</label><br><br>
	<input type="text" name="restaurantname" class="input" pattern="[A-Za-z]{5,}" required>
	<label for="rating">Ratings</label><br><br>
	<input type="text" name="rating" class="input" pattern="[0-5]" required><br><br>
	<div class="btn"><button class="button" type="submit"><a href="showrestaurant.jsp">Add</a></button>
	 </button></div>
</form>
</div>
</body>
</html>