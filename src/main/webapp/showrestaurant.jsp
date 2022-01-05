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
		width:280px;
		overflow:hidden;
	}
	span{
		position : relative;
		top:300px;
		left: -300px;
	}
	table td{
		padding: 20px 10px;
	}	
</style>
</head>
<body>
<div class="nav">
    <ul>
        <li><input type="text" class="text"></li>
        <li><button>search</button></li>
        <li><a href="showrestaurant.jsp">Restaurants</a></li>
        <li><a href="" class="set1">cart</a></li>
        <li><a href="">User profile</a></li>
    </ul>
</div>

<%! 
	RestaurantdetailsDaoimpl restaurantdao = new RestaurantdetailsDaoimpl();
	List<RestaurantDetails> restaurantlist = new ArrayList<RestaurantDetails>();
%>
<%
	restaurantlist = restaurantdao.showRestaurant();
%>
<table>
<tbody>
	   <tr>
         <p>Restaurant Details</p>
				<%int count=0;
	  			for(RestaurantDetails showRestaurant : restaurantlist)
	 			{%>
                    <td>
                        <table id="foodtable">
                            <tbody>
                                <tr>
                                    <td><a href="restaurantfoodlist.jsp"><img src=<%=showRestaurant.getRestaurantimages()%> alt="restaurantimage"></a></td>    
                                    <span>Restaurant name : <%=showRestaurant.getRestaurant_name() %></span><br>                                      
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