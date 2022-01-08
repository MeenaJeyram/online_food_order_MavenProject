<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.onlinefoodorder.model.*"%>
<%@page import="java.util.*"%>
<%@page import="com.onlinefoodorder.daoimpl.*"%>
<!DOCTYPE html>
<html>
<head>
<title>My Orders</title>
</head>
<body>

<% int uid = (int)session.getAttribute("Userid1");
   OrderFoodsDaoimpl orderfood = new OrderFoodsDaoimpl(); 
   FoodItemsDaoimpl fooditemdao = new FoodItemsDaoimpl();
   
   List<Orderfoods> orderlist = new ArrayList<Orderfoods>();
   orderlist = orderfood.userViewOrder(uid);
  
	 
   String username = (String)session.getAttribute("username");
   String fname = (String)session.getAttribute("foodname1");%>
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
for (Orderfoods userViewOrder: orderlist ) {
i++;
%>
<tr>

<td><%=i%></td>

<td><%=username %></td>
<td><%=fooditemdao.findFoodname(userViewOrder.getItem_id())%></td>
<td> <%=userViewOrder.getQuantity()%></td>
<td> <%=userViewOrder.getTotal_price()%></td>

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