package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinefoodorder.daoimpl.CartDaoimpl;
import com.onlinefoodorder.daoimpl.FoodItemsDaoimpl;
@WebServlet("/addcartserv")
public class AddcartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String name= request.getParameter("fname");
		int resid = Integer.parseInt(request.getParameter("resid"));
		System.out.println(name);
		System.out.println(resid);
		FoodItemsDaoimpl fooditem = new FoodItemsDaoimpl();
		int itemid = fooditem.finditemid(name, resid);
		System.out.println(itemid);
		CartDaoimpl cart = new CartDaoimpl();
		cart.insertCart(itemid);
		session.setAttribute("itemidcart", itemid);
		response.sendRedirect("CartSucc.jsp");
	}


}
