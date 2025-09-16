package com.bookticket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.User;
import com.user.userDButil;


public class insertTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("cusName");
		String nic=request.getParameter("nic");
		String email=request.getParameter("cusEmail");
		String depature=request.getParameter("depStation");
		String arrival=request.getParameter("arrStation");
		String classtype=request.getParameter("stClass");
		int numseats = Integer.parseInt(request.getParameter("numSeats"));

		boolean isTrue;
		isTrue = ticketDButil.insertTicket(name,nic,email,depature,arrival,classtype,numseats);
		if(isTrue==true) {
			
			List<Ticket> tickDetails = ticketDButil.getTicketByNIC(nic); // create this method
			request.setAttribute("tickDetails", tickDetails);
			RequestDispatcher dis = request.getRequestDispatcher("listTicket.jsp");
			dis.forward(request,response);
			
		}else {
			RequestDispatcher dis=request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request,response);
		}
	}
}
