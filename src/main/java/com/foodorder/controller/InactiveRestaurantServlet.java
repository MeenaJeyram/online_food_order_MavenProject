package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinefoodorder.daoimpl.RestaurantdetailsDaoimpl;
import com.onlinefoodorder.model.RestaurantDetails;

@WebServlet("/deleterestaurant")
public class InactiveRestaurantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
          
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//doGet(request, response);
		String email = request.getParameter("email");
		System.out.println("email"+email);
		RestaurantdetailsDaoimpl restaurantdao = new RestaurantdetailsDaoimpl();
		restaurantdao.inactiveRestaurant(email);
		HttpSession session = request.getSession();
		session.setAttribute("deleterestaurant","Restaurant Inactive");
		response.sendRedirect("admin.jsp");
	}
}
