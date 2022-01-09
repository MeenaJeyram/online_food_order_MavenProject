package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinefoodorder.daoimpl.RatingsDaoimpl;
import com.onlinefoodorder.daoimpl.RestaurantdetailsDaoimpl;
import com.onlinefoodorder.model.Ratings;

@WebServlet("/rating")
public class RatingsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		HttpSession session = request.getSession();
		RestaurantdetailsDaoimpl restaurant = new RestaurantdetailsDaoimpl();
		RatingsDaoimpl ratingdao = new RatingsDaoimpl();

		int userid = (int)session.getAttribute("Userid1");
		System.out.println("userid" +userid);
		
		String resname = request.getParameter("restaurantname");
		System.out.println("resname" +resname);	
		int resid = restaurant.findRestaurantId2(resname);
		System.out.println("resid" +resid);
		
		double resrating = Double.parseDouble(request.getParameter("rating"));
		System.out.println("rating" +resrating);
		
		Ratings rating = new Ratings(userid, resid, resrating);
		
		ratingdao.insertRatings(rating);	
	}
}
