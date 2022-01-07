package com.foodorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foodorder.dao.UserDao;
import com.onlinefoodorder.daoimpl.FoodItemsDaoimpl;
import com.onlinefoodorder.daoimpl.OrderFoodsDaoimpl;
import com.onlinefoodorder.daoimpl.UserDaoimpl;
import com.onlinefoodorder.model.Orderfoods;
import com.onlinefoodorder.model.User;

@WebServlet("/orderfood")
public class OrderfoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		HttpSession session = request.getSession();
		FoodItemsDaoimpl fooditem = new FoodItemsDaoimpl();
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		System.out.println(quantity);
		
		int userid = (int)(session.getAttribute("Userid1"));
		System.out.println("userid " +userid);
		
		String emailaddress = (String)session.getAttribute("emailid");
		System.out.println("user name : " +emailaddress);
	
		int resid = Integer.parseInt(request.getParameter("number"));
		System.out.println("resid " +resid);
		
		String fname=request.getParameter("foodname");
		System.out.println(fname);
		
		int itemid = fooditem.finditemid(fname, resid);
		System.out.println(itemid);
	
		int price = fooditem.findFoodPrice(itemid);
		System.out.println("price " +price);
		
		int totalprice = quantity*price;
		System.out.println("totalprice " +totalprice);
		
		OrderFoodsDaoimpl orderfood = new OrderFoodsDaoimpl();
		Orderfoods order = new Orderfoods(userid, itemid, quantity, totalprice);
		orderfood.insertOrderFoods(order);
		
		UserDaoimpl userdao = new UserDaoimpl();
		int wallet = userdao.walletbal(userid);
		
		if(wallet > 0)
		{
			int walletbalance = wallet - totalprice; 
			User user = new User(null, 0, null, emailaddress, null, walletbalance);
			userdao.updatewallet(user);
			response.sendRedirect("orderconfirm.jsp");
		}
		else {
			System.out.println("Please recharge your wallet..");
		}
	}

}
