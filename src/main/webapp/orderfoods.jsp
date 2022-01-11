<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Food Quantity</title>
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
    padding: 30px 29px;
    font-weight:bold;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: rgba(221, 228, 236, 0.363);
} 
.set1{
        	height:200px;
        	width:300px;
        	margin-left: 400px;
     }
     .t1{
        	border :1px solid white;
        	padding-top: 180px;
        	padding-left:110px;
        }
        .button{
        	padding:7px 104px;
        	border : 1px solid #2f4f4f;
        	background-color:#2f4f4f;
        	border-radius:4px;
        	color: white;
        	cursor: pointer;
        }
        button:hover {
 			 opacity: 0.8;
		}
</style>
</head>
<body>
<div class="t1">
<div class="set1">
<form action="orderfood" method="post">

	<label for="quantity">Food Quantity</label><br>
	<input type="number" name="quantity" class="input"><br>
	<input type="hidden" name="number" value="<%=Integer.parseInt(request.getParameter("resid")) %>">
	<input type="hidden" name="foodname" value="<%=request.getParameter("fname")%>">
	<br><button type="submit" class="button">Order</button>
</form>
</div>
</div>
</body>
</html>