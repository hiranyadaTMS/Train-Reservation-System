package com.payment;

/*This is the payment model class*/ 

public class Payment {
	private int paymentid;
	private String propertyname;
	private String name;
	private String cardno;
	private String cardexpdate;
	private String cvc;
	
	//overloaded constructor to set values
	public Payment(int paymentid,String propertyname, String name,String cardno, String cardexpdate, String cvc) {
		this.paymentid = paymentid;
		this.propertyname=propertyname;
		this.name=name;
		this.cardno = cardno;
		this.cardexpdate = cardexpdate;
		this.cvc = cvc;
	}

	//getters for each property to return the values
	public int getPaymentid() {
		return paymentid;
	}

	public String getPropertyname() {
		return propertyname;
	}
	public String getCardno() {
		return cardno;
	}

	public String getCardexpdate() {
		return cardexpdate;
	}

	public String getCvc() {
		return cvc;
	}

	public String getName() {
		return name;
	}
	
}
