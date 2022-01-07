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
int userid =(int)session.getAttribute("Userid1");
orderlist = orderfood.userViewOrder(userid);
 %>
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

<td><%=userViewOrder.getUser_id()%></td>
<td><%=userViewOrder.getItem_id()%></td>
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