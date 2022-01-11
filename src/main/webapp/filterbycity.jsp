<%@page import="com.onlinefoodorder.model.*"%>
<%@page import="com.onlinefoodorder.daoimpl.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter Restaurant by city name</title>
<style>
*style{
	margin:0;
	padding:0;
}
body{
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
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      font-weight:bold;
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
		left: -293px;
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
<form>
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
	double restaurantRating;
%>
<%	
	RestaurantdetailsDaoimpl restaurantdao = new RestaurantdetailsDaoimpl();
	String city = session.getAttribute("city").toString();
	System.out.println("jspcity" +city);
	List<RestaurantDetails> restaurantlist = restaurantdao.filterbyCity(city);
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
                  <%
                  int rid = restaurantdao.findRestaurantId2(showRestaurant.getRestaurant_name());
                  %>
                      <td><a href="restaurantfoodlistSer?rid=<%=rid%>"><img src="image/<%=showRestaurant.getRestaurant_images()%>" alt="restaurantimage"></a></td>    
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