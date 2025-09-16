package com.bookticket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateTicketServlet")
public class updateTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("cusName");
		String nic = request.getParameter("nic");
		String email = request.getParameter("cusEmail");
		String dpstation = request.getParameter("depStation");
		String arrstation = request.getParameter("arrStation");
		String seatclass = request.getParameter("stClass");
		String numofseats = request.getParameter("numSeats");
		
		boolean isTrue;
		
		isTrue  =ticketDButil.updateTickdetails(id,name, nic, email, dpstation, arrstation, seatclass, numofseats);
		
		if(isTrue==true) {
			
			List<Ticket> tickDetails = ticketDButil.getTicketByNIC(nic);
			request.setAttribute("tickDetails", tickDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("listTicket.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request,response);
		}
	}

}
