package com.payment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.user.DBconnect;

public class PaymentDButil {
    private static Connection con = null;
    private static Statement state = null;
    private static ResultSet rs = null;

    // Insert payment method
    public static boolean insertpayment(String propertyname, String paymentid, String name, String cardno, String cardexpdate, String cvc) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBconnect.getConnection();
            String sql = "INSERT INTO payments (propertyname, name, cardno, cardexpdate, cvc) VALUES (?, ?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, propertyname);
            pstmt.setString(2, name);
            pstmt.setString(3, cardno);
            pstmt.setString(4, cardexpdate);
            pstmt.setString(5, cvc);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }

    // Get payment details method
    public static List<Payment> getPaymentDetails(	) {
        ArrayList<Payment> payList = new ArrayList<>();

        try {
            con = DBconnect.getConnection();
            String sql = "SELECT * FROM payments";
            state = con.createStatement();
            rs = state.executeQuery(sql);

            while (rs.next()) {
            	 int paymentid = rs.getInt(1);
                String propertyname = rs.getString(2);
                String name = rs.getString(3);
                String cardno = rs.getString(4);
                String cardexpdate = rs.getString(5);
                String cvc = rs.getString(6);

                Payment p1 = new Payment(paymentid,propertyname,  name, cardno, cardexpdate, cvc);
                payList.add(p1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (state != null) state.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return payList;
    }

    // Update payment method
    public static boolean updatepayment(String paymentid,String propertyname, String name, String cardno, String cardexpdate, String cvc) {
        boolean isSuccess = false;
     

        try {
            con = DBconnect.getConnection();
            state = con.createStatement();
            String sql = "UPDATE payments SET propertyname='"+propertyname+"', name='"+name+"', cardno='"+cardno+"', cardexpdate='"+cardexpdate+"', cvc='"+cvc+"'"+"WHERE paymentId='"+paymentid+"'";
           
            int result = state.executeUpdate(sql);

            if (result > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
    
    // Delete payment method
    public static boolean deletepayment(String paymentid) {
    	
    	int convId=Integer.parseInt(paymentid);
         boolean isSuccess=false;
        

        try {
            con = DBconnect.getConnection();
            state = con.createStatement();
            String sql = "DELETE FROM payments WHERE paymentId='"+convId+"'";
            

            int result = state.executeUpdate(sql);

            if (result > 0) {
                isSuccess = true;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return isSuccess;
    }
}
