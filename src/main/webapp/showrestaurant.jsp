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
*style{
	margin:0;
	padding:0;
}
body{
	font-weight:bold;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: rgba(255, 255, 128, .5);
    font-size:13.5px;
}
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
      font-size: 15px;
  }
  li a{
      text-decoration: none;
      color:white;
      display:block;
      padding-right: 7px;
      padding-left: 7px;
  }
  li button{
      margin-right: 500px;
  }
  .text{
        margin-right: 20px;
  }
	img
	{
		padding :40px 10px;	
		height:230px;
		width:280px;
		overflow:hidden;
		padding-left :50px; 
	}
	.names{
		position : relative;
		top:150px;
		left: -295px;
		width: 140%;
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
</style>
</head>
<body>
<form action="filterfoodprice" method="post">
<div class="nav">
    <ul>
        <li><input type="text" name="search" class="text"></li>
        <li> <button>search</button></a></li>
        <li><a href="showfoods.jsp">Foods</a></li>
        <li><a href="showrestaurant.jsp">Restaurants</a></li>
        <li><a href="showcart.jsp">Cart</a></li>
        <li><a href="walletrecharge.jsp">Wallet</a></li>
        <li><a href="viewOrderUser.jsp">My Orders</a>
        <li><a href="userprofile.jsp">User profile</a></li>
        <li><a href="ratings.jsp">rating</a></li>
    </ul>
</div>

<%! 
	RestaurantdetailsDaoimpl restaurantdao = new RestaurantdetailsDaoimpl();
	List<RestaurantDetails> restaurantlist = new ArrayList<RestaurantDetails>();
%>
<%
	restaurantlist = restaurantdao.showRestaurant();
%>
<div class="table">
<table>
<tbody>
	   <tr>
		<%int count=0;
	  	for(RestaurantDetails showRestaurant : restaurantlist){
	 	%>
             <td>
                <table id="foodtable">
                <tbody>
                  <tr>
                      <td><a href="restaurantfoodlist.jsp"><img src="image/<%=showRestaurant.getRestaurant_images()%>" alt="restaurantimage"></a></td>    
                      <td>
                      <div class="names"><%=showRestaurant.getRestaurant_name() %><br>
                       Area : <%=showRestaurant.getArea() %><br>
                       City : <%=showRestaurant.getCity() %></div>                                    
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
</div>
</form>               
</body>