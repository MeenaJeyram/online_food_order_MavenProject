<%@page import="com.onlinefoodorder.model.*"%>
<%@page import="com.onlinefoodorder.daoimpl.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User view food items</title>
<style>
*style{
	margin:0;
	padding:0;
}
body{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url("image/");
    font-size:13.5px;
}
  ul
  {
        list-style: none;
        background-color: #1c1c1c;
    }
  li{
      display:inline-block;
      padding-top: 13px;
      padding-bottom: 13px;
      text-align: center;
      font-size: 15px;
  }
  li a{
      text-decoration: none;
      font-weight:bold;
      color:white;
      display:block;
      padding-right: 7px;
      padding-left: 7px;
  }
  li button{
      margin-right: 400px;
  }
  
	img
	{
		height:210px;
		width:240px;
		overflow:hidden;
		padding-top:60px;
		padding-bottom:33px;
	}
	.names{
		position : relative;
		top:180px;
		left: -250px;
		width: 200%;
		padding-bottom:30px;
	}
	
	button{
		border : 1px solid #bebebe;
		background-color:#bebebe;
		padding: 5px 5px;
		border-radius: 4px;
	}
	button a{
		text-decoration :none;
		link-style: none;
		color: black; 
	}
	.text
	{
		padding:5.5px;
		border-radius: 4px;
	}
</style>
</head>
<body>
<form action="filterfoods" method="post">
<div class="nav">
    <ul>
        <li><input type="text" name="search" class="text" placeholder="   Food name  "></li>
        <li> <button>Search Foods</button></a></li>
        <li><a href="showfoods.jsp">Food Items</a></li>
        <li><a href="showrestaurant.jsp">Restaurants</a></li>
        <li><a href="showcart.jsp">Add to Cart</a></li>
        <li><a href="walletrecharge.jsp">Wallet</a></li>
        <li><a href="viewOrderUser.jsp">My Orders</a>
        <li><a href="userprofile.jsp">My profile</a></li>
        <li><a href="ratings.jsp">Rating</a></li>
    </ul>
</div>

<%!
	FoodItemsDaoimpl fooditemdao = new FoodItemsDaoimpl();
	List<FoodItems> foodItemList = new ArrayList<FoodItems>();
	RestaurantdetailsDaoimpl restaurantdao = new RestaurantdetailsDaoimpl();
	FoodItems fooditem = new FoodItems();
	int restaurantid = fooditem.getRestaurant_id();
	String resname = restaurantdao.findRestaurantName(restaurantid);
%>
<%
	foodItemList = fooditemdao.showFoodItems();
%>
<div class="table">
<table>
<tbody>
	   <tr>
         <%int count=0;
         for(FoodItems showFoodItems : foodItemList){
    	 %>
                    <td>
                        <table id="foodtable">
                            <tbody>
                                <tr>
                                    <td><img src="image/<%=showFoodItems.getFood_image()%>" alt="foodimage"></td>    
                                    <td>
                                    <div class="names"><%=showFoodItems.getFood_name() %><br>
                                    Food Price :<%=showFoodItems.getPrice()%><br>
                                    <%=restaurantdao.findRestaurantName(showFoodItems.getRestaurant_id())%>
                                    <button><a href = "addcartserv?fname=<%=showFoodItems.getFood_name()%>&resid=<%=showFoodItems.getRestaurant_id()%>">Add to cart</a></button>
                                    </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==4){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
</tbody>
</table>
</div>
</form>
</body>