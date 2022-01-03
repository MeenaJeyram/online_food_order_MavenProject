package com.foodorder.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinefoodorder.daoimpl.UserDaoimpl;
import com.onlinefoodorder.model.User;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/userlogin")
public class loginServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		UserDaoimpl userdao = new UserDaoimpl();
		User user = userdao.validateUser(email, password);
		User admin = userdao.admin(email, password);
		PrintWriter pw = response.getWriter();
		if(user!=null)
		{
			pw.write("welcome " +user.getUser_name());
			RequestDispatcher rd = request.getRequestDispatcher("foodlist.jsp");
			rd.forward(request, response);
			
		}
		else if(admin!=null)
		{
			pw.write("welcome admin");
			RequestDispatcher rd = request.getRequestDispatcher("restaurantdetails.jsp");
			rd.forward(request, response);
		}
		else
		{
			pw.write("Invalid Login");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
			
		}
		
	}

}
