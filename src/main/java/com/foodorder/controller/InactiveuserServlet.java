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

@WebServlet("/inactiveuser")
public class InactiveuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		String email = request.getParameter("email");
		User user = new User();
		UserDaoimpl userdao = new UserDaoimpl();
		userdao.userProfileDelete(email);
		HttpSession session = request.getSession();
		session.setAttribute("user", "User Inactive");
		response.sendRedirect("admin.jsp");
	}

}
