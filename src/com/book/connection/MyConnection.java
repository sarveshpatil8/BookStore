package com.book.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



	public class MyConnection {
		
		static Connection conn=null;
		public static Connection getConnectionObj()
		{
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Driver Loaded...");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
				System.out.println("Connection Established...");
				return conn;
				
			    } 
			catch (Exception e) 
			    {
				e.printStackTrace();
				}
			
			return null;
		}
		
		public static void CloseConnection()
		  {
		    try
		    {
		       conn.close();
		       conn = null;
		    }
		    catch (SQLException e)
		    {
		       e.printStackTrace();
		    } 
		  }

}

