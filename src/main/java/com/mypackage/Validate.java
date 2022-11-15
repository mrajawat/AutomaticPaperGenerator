package com.mypackage;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




public class Validate {
	public static boolean checkUser(String email,String pass) 
    {
        boolean st =false;
        try {

            //loading drivers for mysql
            Class.forName("oracle.jdbc.driver.OracleDriver");

            //creating connection with the database
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","msr","123");
            PreparedStatement ps = con.prepareStatement("select * from admin where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs =ps.executeQuery();
            st = rs.next();

        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return st;                 
    }   
}
