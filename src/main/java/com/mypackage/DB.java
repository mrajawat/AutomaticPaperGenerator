package com.mypackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	public static Connection getCon(){
		Connection con=null;
			try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","msr","123");			
					}
			catch(Exception e){System.out.println(e);}
			return con;
		}
}
