package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinefoodorder.daoimpl.UserDaoimpl;
import com.onlinefoodorder.model.User;

@WebServlet("/userview")
public class UserviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		//doGet(request, response);
		String emailid = request.getParameter("email");
		User user = new User();
		UserDaoimpl userdao = new UserDaoimpl();
		userdao.viewSingleUser(emailid);
		response.sendRedirect("adminViewUserList.jsp");
	}
}
