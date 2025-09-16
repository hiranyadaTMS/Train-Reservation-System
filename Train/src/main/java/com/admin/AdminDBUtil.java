package com.admin;

import java.sql.Connection;
import com.user.DBconnect;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AdminDBUtil {
	
	private static boolean isSuccess;	
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
	public static boolean validate(String username, String password) {
		
		
		
		boolean status = false;
		
		try {
			con=DBconnect.getConnection();
            stmt = con.createStatement();
           
			//SQL Statement
			String sql = "select * from admins where adminUsername = '" + username + "' AND adminPassword = '" + password + "'";

			//Execute SQL query and get result
			 rs = stmt.executeQuery(sql);
			
			//if the result is not null
			if(rs.next()) {
				status = true;
			}
			
			else {
				status = false;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return status;
	}

}
