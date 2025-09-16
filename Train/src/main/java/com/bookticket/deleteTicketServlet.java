package com.bookticket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class deleteTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String nic = request.getParameter("nic");
		boolean isTrue;
		
		isTrue = ticketDButil.deleteTickdetaisl(nic);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("booktrain.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Ticket> tickDetails = ticketDButil.getTicketByNIC(nic);
			request.setAttribute("tickDetails", tickDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("listTicket.jsp");
			dispatcher.forward(request, response);
		}
	}

}
