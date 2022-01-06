<%@page import="com.onlinefoodorder.model.FoodItems"%>
<%@page import="com.onlinefoodorder.daoimpl.FoodItemsDaoimpl"%>
<%@page import="java.util.*"%>
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
        ul{
            background-color: darkslategray;
            margin-top: 0;
            margin-bottom: 0;
        }
        li{
            list-style:none;
            padding:30px 18px;
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
<%!
	FoodItemsDaoimpl fooditemdao = new FoodItemsDaoimpl();
	List<FoodItems> foodItemList = new ArrayList<FoodItems>();
%>
<%
	foodItemList = fooditemdao.showFoodItems();
%>
<table>
		<h1><b>View food details</b></h1>
		<thead>
		<tr>
  		<th >S.no</th>
		<th>Item Id</th>
		<th>Food name</th>
		<th>Cuisine name</th>
		<th>Description</th>
		<th>Price</th>
	</tr>
	</thead>
	<br><br>
<tbody>
<%
	int i = 0;
	for (FoodItems showFoodItems: foodItemList){
	i++;
%>
<tr>
	<td><%=i%></td>
	<td><%=showFoodItems.getItem_id()%></td>
	<td><%=showFoodItems.getFood_name()%></td>
	<td> <%=showFoodItems.getCuisine_name()%></td>
	<td> <%=showFoodItems.getDescription()%></td>
	<td> <%=showFoodItems.getPrice()%></td>
</tr>

<%
}
%>
</tbody>

	</table>
</body>
</html>