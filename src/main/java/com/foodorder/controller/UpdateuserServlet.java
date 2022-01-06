package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinefoodorder.daoimpl.UserDaoimpl;
import com.onlinefoodorder.model.User;

/**
 * Servlet implementation class updateuserServlet
 */
@WebServlet("/updateuser")
public class UpdateuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateuserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		String username = request.getParameter("username");
		Long phonenumber = Long.parseLong(request.getParameter("phonenumber"));
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user = new User(username, phonenumber, address, email, password, 0);
		UserDaoimpl userdao = new UserDaoimpl();
		userdao.userProfileUpdate(user);
	}
}
