package com.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.book.connection.MyConnection;
import com.book.pojo.UserInfo;

public class UserInfoIml implements UserInfoInt {

	public boolean addUser(UserInfo u) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("insert into usertable( fname, Lname, userid, password, mobileno, email, address, userType) values (?,?,?,?,?,?,?,?)");
			
			ps.setString(1, u.getFname());
			ps.setString(2, u.getLname());
			ps.setString(3, u.getUserId());
			ps.setString(4,u.getPassword());
			ps.setLong(5, u.getMobileNo());
			ps.setString(6, u.getEmailid());
			ps.setString(7, u.getAddress());
			ps.setString(8, u.getUserType());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

	public boolean login(UserInfo u) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("select * from usertable where UserId=? and Password=?");
			ps.setString(1, u.getUserId());
			ps.setString(2, u.getPassword());
			//ps.setString(3, u.getUserType());
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

}
