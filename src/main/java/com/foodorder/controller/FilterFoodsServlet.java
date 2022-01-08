package com.foodorder.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinefoodorder.daoimpl.FoodItemsDaoimpl;
import com.onlinefoodorder.model.FoodItems;

@WebServlet("/filterfoodprice")
public class FilterFoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int foodprice = Integer.parseInt(request.getParameter("search"));
		FoodItemsDaoimpl fooditemdao = new FoodItemsDaoimpl();
		//FoodItems fooditem = new FoodItems(0, null, null, null, foodprice, null);
		
		HttpSession session = request.getSession();
		 fooditemdao. filterbyPrice(foodprice);
		session.setAttribute("pricefilter",foodprice);
		response.sendRedirect("filterFoodsbyPrice.jsp");
	}
}
