package com.payment;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paymentid=request.getParameter("paymentid");
		String propertyname= request.getParameter("propertyname");
		String name=request.getParameter("name");
		String cardno=request.getParameter("cardno");
		String cardexpdate=request.getParameter("cardexpdate");
		String cvc=request.getParameter("cvc");

		boolean istrue;
		istrue = PaymentDButil.updatepayment(paymentid,propertyname,  name, cardno, cardexpdate, cvc);

		if (istrue==true) {
			List<Payment>paydetails= PaymentDButil.getPaymentDetails();
			request.setAttribute("paydetails", paydetails);
			RequestDispatcher dis = request.getRequestDispatcher("paymentaccount.jsp");
			dis.forward(request, response);
		} else {
			// Debugging: Log failure
			System.out.println("Payment update failed in database.");
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}
}
