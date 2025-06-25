package com.code.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection con=null;
	
	public static Connection getConnect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankapp","root","divya");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
