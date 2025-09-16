package com.bookticket;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bookticket.Ticket;
import com.user.DBconnect;

public class ticketDButil {
	
	private static boolean isSuccess;	
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
	public static boolean insertTicket(String name,String nic, String email, String dpstation, String arstation,String seatclass, int numseats) {
		
		boolean isSuccess=false;
		
		//create 
		 
	     try {
	    	 	con=DBconnect.getConnection();
	            stmt = con.createStatement();
	            // Insert query with explicit columns
	            String sql = "insert into ticket values(0,'"+name+"','"+nic+"','"+email+"','"+dpstation+"','"+arstation+"','"+seatclass+"',"+numseats+")";
	            int rs =stmt.executeUpdate(sql);
	            
	            if (rs>0) {
					isSuccess = true;
				}else {
					isSuccess = false;
					
				}
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	     return isSuccess;
	     
	}
	
	public static List<Ticket> getTicketByNIC(String nic) {
	    ArrayList<Ticket> tickets = new ArrayList<>();
	    
	   
	    try {
	    	con=DBconnect.getConnection();
	        String sql = "SELECT * FROM ticket WHERE nic = '" + nic + "'";
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            String nic1=rs.getString(3);
	            String email = rs.getString(4);
	            String dpstation = rs.getString(5);
	            String arstation = rs.getString(6);
	            String seatclass = rs.getString(7);
	            int numseats = rs.getInt(8);

	            Ticket t = new Ticket(id, name, nic1, email, dpstation, arstation, seatclass, numseats);
	            tickets.add(t);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return tickets;
	}
	
	public static boolean updateTickdetails(int id,String name,String nic,String email,String dpstation,String arrstation,String seatclass,String numofseats) {
		
		try {
			con=DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update ticket set cus_name='"+name+"',nic='"+nic+"',cus_email='"+email+"',dep_station='"+dpstation+"',arr_station='"+arrstation+"',st_class='"+seatclass+"',num_seats='"+numofseats+"'"+" where ticket_id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess=true;
					
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	public static boolean deleteTickdetaisl(String nic) {
    	
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from ticket where nic='"+nic+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
}
