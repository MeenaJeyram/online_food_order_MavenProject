package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinefoodorder.daoimpl.RestaurantdetailsDaoimpl;

@WebServlet("/")

public class FilterRestaurantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		RestaurantdetailsDaoimpl restaurantdao = new RestaurantdetailsDaoimpl();
		
		HttpSession session = request.getSession();
		String city = request.getParameter("search");
		System.out.println("servcity" +city);
		restaurantdao.filterbyCity(city);
		session.setAttribute("city", city);
		response.sendRedirect("filterbycity.jsp");	
	}
}
