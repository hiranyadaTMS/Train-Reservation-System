package com.bookticket;

public class Ticket {
	
	private int id;
	private String name;
	private String nic;
	private String email;
	private String dpstation;
	private String arstation;
	private String seatclass;
	private int numseats;
	
	public Ticket(int id,String name,String nic, String email, String dpstation, String arstation,String seatclass, int numseats) {
		
		this.id=id;
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.dpstation = dpstation;
		this.arstation = arstation;
		this.seatclass = seatclass;
		this.numseats = numseats;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}
	public String getNic() {
		return nic;
	}
	
	public String getEmail() {
		return email;
	}

	public String getDpstation() {
		return dpstation;
	}

	public String getArstation() {
		return arstation;
	}
	
	public String getSeatclass() {
		return seatclass;
	}

	public int getNumseats() {
		return numseats;
	}
	
	
}
