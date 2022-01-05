<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>
<%@page import="com.onlinefoodorder.model.*"%>
<%@page import="com.onlinefoodorder.daoimpl.CartDaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Details</title>
<style>
  ul
  {
        list-style: none;
        background-color: #1c1c1c;
        margin:0;
    }
  li{
      display:inline-block;
      padding-top: 13px;
      padding-bottom: 13px;
      text-align: center;
      font-size: 17px;
  }
  li a{
      text-decoration: none;
      color:white;
      display:block;
      padding-right: 7px;
      padding-left: 7px;
  }
  li button{
      margin-right: 680px;
  }
  .text{
        margin-right: 20px;
  }
  .set1{
      margin-right: 20px;
  }
	img
	{
		height:250px;
		width:300px;
		overflow:hidden;
		padding-top:60px;
		padding-bottom:30px;
	}
	span{
		position : relative;
		top:180px;
		left: -300px;
	}
</style>
</head>
<body>
    <ul>
        <li><input type="text" class="text"></li>
        <li><button>search</button></li>
        <li><a href="showrestaurant.jsp">Restaurants</a></li>
        <li><a href="showcart.jsp" class="set1">cart</a></li>
        <li><a href="">User profile</a></li>
    </ul>
<%
int itemid = (int)session.getAttribute("itemidcart");
CartDaoimpl cartDaoimpl = new CartDaoimpl();
List<FoodItems> rs = cartDaoimpl.fetchCart();
%>

<table>
<tbody>
	   <tr>
         <%int count=0;
         for(FoodItems showFoodItems : rs){
    	 %>
                    <td>
                        <table id="foodtable">
                            <tbody>
                                <tr>
                                    <td><img src=<%=showFoodItems.getFoodimages()%> alt="foodimage"></td>    
                                    <td class="book">
                                        <span>Food name   :<%=showFoodItems.getFood_name() %></span><br>
                                        <span> Food Price :<%=showFoodItems.getPrice() %>  </span><br>
                                         <span><a href = "addcartserv?fname=<%=showFoodItems.getFood_name()%>&resid=<%=showFoodItems.getRestaurant_id()%>">Add to cart</a></span>
                                       
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==3){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
</tbody>
</table>
</body>
</html>