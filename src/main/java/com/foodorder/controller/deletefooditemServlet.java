package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinefoodorder.daoimpl.FoodItemsDaoimpl;
import com.onlinefoodorder.model.FoodItems;
@WebServlet("/deletefooditem")
public class deletefooditemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int itemid = Integer.parseInt(request.getParameter("foodid"));
		FoodItems food = new FoodItems();
		FoodItemsDaoimpl fooddao = new FoodItemsDaoimpl();
		fooddao.deleteFoodItem(itemid);
	}
}
