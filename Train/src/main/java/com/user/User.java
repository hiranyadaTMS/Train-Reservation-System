package com.user;

public class User {
	private int id;
	private String userName;
	private String password;
	private String fullName;
	private String email;
	private String phone;
	
	public User(int id, String userName, String password, String fullName, String email, String phone) {
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getFullName() {
		return fullName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	
	
	
}
