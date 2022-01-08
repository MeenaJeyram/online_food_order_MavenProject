<%@page import="com.onlinefoodorder.model.RestaurantDetails"%>
<%@page import="com.onlinefoodorder.daoimpl.RestaurantdetailsDaoimpl"%>
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
 padding: 22.25px 18px;
         }
        li a{
            text-decoration: none;
            color:white;
        }
   	 	td, th{
        	padding: 8px;
        }
        aside{
        	float:left;
        	margin-right: 30px;
        }
        .t1{
        	padding-top : 60px;
        	padding-right : 100px;
        }
        .t2
        {
        background-color: rgba(221, 228, 236, 0.363);
        border-radius: 15px;
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
        <li><a href="vieworders.jsp">View Orders</a>
</ul>
</aside>
		<%RestaurantdetailsDaoimpl restaurantdao = new RestaurantdetailsDaoimpl();
		  List<RestaurantDetails> restaurantlist = new ArrayList<RestaurantDetails>();
		  restaurantlist= restaurantdao.showRestaurant();
		%>
<div class="t1">
<div class="t2">
	<table>
		<h2>View Restaurant details</h2>
		<thead>
		<tr>
  		<th >S.no</th>
		<th>Restaurant name</th>
		<th>Area</th>
		<th>City</th>
		<th>Pincode</th>
		<th>Landline number</th>
		<th>Owner name</th>
		<th>Operational hours</th>
		<th>Email address</th>
	</tr>
	</thead>
	<br><br>
<tbody>
<%
	int i = 0;
	for (RestaurantDetails showRestaurant: restaurantlist) 
	{
		i++;
%>
<tr>
	<td><%=i%></td>
	<td><%=showRestaurant.getRestaurant_name()%></td>
	<td><%=showRestaurant.getArea()%></td>
	<td> <%=showRestaurant.getCity()%></td>
	<td> <%=showRestaurant.getPincode()%></td>
	<td> <%=showRestaurant.getRestaurant_landline_no()%></td>
	<td> <%=showRestaurant.getOwner_name()%></td>
	<td> <%=showRestaurant.getOperational_hours()%></td>
	<td> <%=showRestaurant.getEmail()%></td>

</tr>
<%
}
%>
</tbody>

	</table>
	</div>
	</div>
</body>
</html>