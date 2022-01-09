<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.onlinefoodorder.model.*"%>
<%@page import="java.util.*"%>
<%@page import="com.onlinefoodorder.daoimpl.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
		*{
			margin:0;
			padding:0;
		}
       ul{
            background-color: darkslategray;
            margin:0;
        }
        li{
            list-style:none;
		 	padding: 25.7px 18px;
        }
        li a{
            text-decoration: none;
            color:white;
        }
        aside{
        	float:left;
        	margin-right: 70px;
        }
        td, th{
        	padding: 10px;
        }
        .t1{
        	border :1px solid white;
        	padding-top: 60px;
        	
        }
        .t2{
        	background-color: rgba(221, 228, 236, 0.363);
       	    border-radius: 15px;
        	padding-left: 100px;
        }
        .set1{
         padding: 20px 20px;
         background-color: rgba(221, 228, 236, 0.363);
       	 border-radius: 15px;
        }
        .button{
        	padding:4px 10px;
        	border : 1px solid #2f4f4f;
        	background-color:#2f4f4f;
        	border-radius:4px;
        	color: white;
        }
        .input
        {
        	padding : 4px 20px;
        	border : 1px solid #2f4f4f;
        	border-radius:4px;
        	
        }
 .t1{
        	border :1px solid white;
        	padding-top: 60px;
        	
        }
        .set1{
         padding: 20px 20px;
         background-color: rgba(221, 228, 236, 0.363);
       	 border-radius: 15px;
        }
</style>
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
<%  OrderFoodsDaoimpl orderfood = new OrderFoodsDaoimpl(); 
	FoodItemsDaoimpl fooditemdao = new FoodItemsDaoimpl();
	List<Orderfoods> orderlist = new ArrayList<Orderfoods>();
	orderlist = orderfood.viewOrderFoods();%>

<% String username = (String)session.getAttribute("username");%>
<% String fname = (String)session.getAttribute("foodname1");%>

<div class="t1">
<div class="set1">
<h3><b>User List</b></h3>
<table>
	<thead>
	<tr>
  		<th >S.no</th>
		<th>User Id</th>
		<th>Item Id</th>
		<th>Quantity</th>
		<th>Total Price</th>
	</tr>
	</thead>
	<br><br>
<tbody>
<%
int i = 0;
for (Orderfoods viewOrderFoods: orderlist ) {
i++;
%>
<tr>

<td><%=i%></td>

<td><%=username %></td>
<td><%= viewOrderFoods.getItem_id()%></td>
<td> <%=viewOrderFoods.getQuantity()%></td>
<td> <%=viewOrderFoods.getTotal_price()%></td>

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