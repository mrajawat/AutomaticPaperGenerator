package com.mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
	public User checkLogin(String email, String password) throws SQLException, ClassNotFoundException{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","msr","123");
			System.out.println("injecting query");
			PreparedStatement ps = con.prepareStatement("select * from admin where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			User user = null;
			if(rs.next()) {
				user = new User();
				user.setFullname(rs.getString("fullname"));
				user.setEmail(email);
			}
			con.close();
			return user;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null; 
		
	}
}
