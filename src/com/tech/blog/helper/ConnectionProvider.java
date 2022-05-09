package com.tech.blog.helper;

import java.sql.*;

public class ConnectionProvider {
	private static Connection con;

	public static Connection getConnection() throws SQLException {
		try {
			if (con == null) {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "root", "1234");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return con;
	}

}