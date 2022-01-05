package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinefoodorder.daoimpl.RestaurantdetailsDaoimpl;
import com.onlinefoodorder.model.RestaurantDetails;

/**
 * Servlet implementation class updaterestaurantServlet
 */
@WebServlet("/updaterestaurantdetail")
public class updaterestaurantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String restaurantname = request.getParameter("restaurantname");
		long landlineno = Long.parseLong(request.getParameter("landlineno"));
		String ownername = request.getParameter("ownername");
		String time = request.getParameter("time");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		RestaurantDetails restaurant = new RestaurantDetails(restaurantname, null, null, 0, landlineno, ownername, time, email, password, null);
		RestaurantdetailsDaoimpl restaurantdao = new RestaurantdetailsDaoimpl();
		restaurantdao.restaurantUpdate(restaurant);
	}
}
