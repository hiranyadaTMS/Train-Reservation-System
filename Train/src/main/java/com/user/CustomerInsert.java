package com.user;

import java.io.IOException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		boolean istrue;
		
		istrue = userDButil.InsertCustomer(username, password,name,email,phone);
		
		if(istrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");

			dis.forward(request,response);
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
		
	}

}
 