package com.user;


import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userDButil {
	
	private static boolean isSuccess;	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	

	public static List<User> validate(String username,String password){
		
		ArrayList<User> user = new ArrayList<>();
		//validate
		try {
			
			//calling database
			con=DBconnect.getConnection();
			stmt=con.createStatement();
			String sql = "select * 	from customers where username = '"+ username+"' and password='"+password+"'";
		    rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String pwd = rs.getString(3);
				String fullname = rs.getString(4);
				String email =rs.getString(5);
				String phone =rs.getString(6);
				
				User u = new User(id,name,pwd,fullname,email,phone);
				user.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		return user;
	}
	
	//customer insert 
		public static boolean InsertCustomer(String username, String password, String name, String email, String phone) {
			
			boolean isSuccess = false;
			
			try {
				//calling database
				con=DBconnect.getConnection();
				stmt=con.createStatement();
				
				String sql= "insert into customers values(0,'"+username+"','"+password+"','"+name+"','"+email+"','"+phone+"')";
				
				int rs =stmt.executeUpdate(sql);
				if (rs>0) {
					isSuccess = true;
				}else {
					isSuccess = false;
					
				}
					
					
			}catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		}
		
		//customer update
		public static boolean updateCustomer(String id,String username,String password,String fullname,String email,String phone) {
			
			
			try {
				con=DBconnect.getConnection();
				stmt=con.createStatement();
				String sql = "UPDATE customers SET username='" + username + "', password='" + password + "', fullName='" + fullname +
			             "', email='" + email + "', phone='" + phone + "' WHERE id='" + id + "'";

				int rs=stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess=true;
				}else {
					isSuccess=false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
			
		}
		
		public static List<User>getCustomerDetails(String Id){
			
			int convertedID =Integer.parseInt(Id);
			ArrayList<User>user = new ArrayList<>();
			
			try {
				con=DBconnect.getConnection();
				stmt=con.createStatement();
				String sql="select * from customers where id='"+convertedID+"'";
				rs=stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id=rs.getInt(1);
					String username=rs.getString(2);
					String password=rs.getString(3);
					String fullname=rs.getString(4);
					String email=rs.getString(5);
					String phone=rs.getString(6);
					
					User u= new User(id,username,password,fullname,email,phone);
					user.add(u);
				}
						
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return user;
		}
		
		public static boolean deleteCustomer(String id) {
			int conId=Integer.parseInt(id);
			
			try {
				con=DBconnect.getConnection();
				stmt=con.createStatement();
				String sql="delete from customers where id='"+conId+"'";
				int r=stmt.executeUpdate(sql);
				
				if(r>0) {
					isSuccess=true;
				}else {
					isSuccess=false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}
}
















