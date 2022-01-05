package com.foodorder.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinefoodorder.daoimpl.FoodItemsDaoimpl;
import com.onlinefoodorder.daoimpl.RestaurantdetailsDaoimpl;
import com.onlinefoodorder.model.FoodItems;
import com.onlinefoodorder.model.RestaurantDetails;
@WebServlet("/foodorderserv")
public class fooditemsServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RestaurantdetailsDaoimpl restaurant = new RestaurantdetailsDaoimpl();
		String foodname = request.getParameter("foodname");
		String cuisinename = request.getParameter("cuisine");
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));
		String foodimages = request.getParameter("foodimage");
		int resid = restaurant.findmaxresid();
		//doGet(request, response);
		FoodItems food = new FoodItems(resid,foodname, cuisinename, description, price, foodimages);
		FoodItemsDaoimpl foodItemsDaoimpl = new FoodItemsDaoimpl();
		foodItemsDaoimpl.insertFoodItems(food);
		PrintWriter pw = response.getWriter();
		pw.write("food items are successfully inserted");
		
	}
}

 