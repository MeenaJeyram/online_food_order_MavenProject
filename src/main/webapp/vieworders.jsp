<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.onlinefoodorder.model.Orderfoods"%>
<%@page import="java.util.*"%>
<%@page import="com.onlinefoodorder.daoimpl.OrderFoodsDaoimpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin view orders</title>
</head>
<body>
<% OrderFoodsDaoimpl orderfood = new OrderFoodsDaoimpl(); 
List<Orderfoods> orderlist = new ArrayList<Orderfoods>();
orderlist = orderfood.viewOrderFoods();%>
<div class ="t1">
<h3><b>User List</b></h3>
<div class="t2">
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

<td><%=viewOrderFoods.getUser_id()%></td>
<td><%=viewOrderFoods.getItem_id()%></td>
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