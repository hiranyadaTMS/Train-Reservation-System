package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id =request.getParameter("id");
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		String fullName =request.getParameter("fullname");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		
		boolean isTrue;
		isTrue=userDButil.updateCustomer(id, username, password, fullName, email, phone);
		
		if(isTrue==true) {
			
			List<User>userDetails =userDButil.getCustomerDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}else {

			List<User>userDetails =userDButil.getCustomerDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
