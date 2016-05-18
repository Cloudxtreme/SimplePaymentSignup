package org.gamelee.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
	public Connection connectToDb(){
		Connection conn = null;
		try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
		    conn =
		       DriverManager.getConnection("jdbc:mysql://localhost/test?" +
		                                   "user=minty&password=greatsqldb");
		} catch (SQLException ex) {
		    // handle any errors
		    System.out.println("SQLException: " + ex.getMessage());
		    System.out.println("SQLState: " + ex.getSQLState());
		    System.out.println("VendorError: " + ex.getErrorCode());
		} catch (Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	
	public void closeConnection(Connection conn) throws SQLException{
		conn.close();
	}
}
