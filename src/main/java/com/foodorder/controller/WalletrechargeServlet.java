package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinefoodorder.daoimpl.UserDaoimpl;
import com.onlinefoodorder.model.User;

@WebServlet("/rechargewallet")
public class WalletrechargeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		HttpSession session = request.getSession();		
		String email = (String) session.getAttribute("emailid");
		int amount = Integer.parseInt(request.getParameter("amount"));
		Long cardnumber = Long.parseLong(request.getParameter("cardnumber"));
		int cvv = Integer.parseInt(request.getParameter("cvv"));
		UserDaoimpl userdao = new UserDaoimpl();
		User user = new User(null, 0, null, email, null, amount);
		boolean wallet = userdao.updatewallet(user);
		if(wallet)
		{
			response.sendRedirect("showfoods.jsp");
		}
		else
		{
			response.getWriter().print("Wallet not recharged");
		}
	}
}