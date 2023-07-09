package com.db;


import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnection {
 
	private static Connection conn;
	private static Connection getConn() {
		try {
			
			if(conn==null) {
				 Class.forName("com.mysql.jdbc.Driver");
					
				 conn=DriverManager.getConnection("jdbc:mysql://localhost/Online_Voting_System","root","Utkarsha@06");
				 
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
}