package com.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.book.connection.MyConnection;
import com.book.pojo.AddToCart;

public class AddCartIml implements AddCartInt {
	public boolean addCart(AddToCart a) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps3=conn.prepareStatement("select quantity from book where name=?");
			ps3.setString(1, a.getName());
			ResultSet rs1=ps3.executeQuery();
			while(rs1.next()){
				if(a.getQuantity()>rs1.getInt("quantity"))
					return false;
			}
			
			PreparedStatement ps2=conn.prepareStatement("select * from cart where author=? and userid=?");
			ps2.setString(1,a.getAuthor());
			ps2.setString(2,a.getUserid());
			ResultSet rs=ps2.executeQuery();
			while(rs.next()){
				
			PreparedStatement ps1=conn.prepareStatement("update cart set quantity=quantity+?,total=total+? where author=? and userid=?");
			
			ps1.setInt(1,a.getQuantity());
			ps1.setInt(2, a.getTotal());
			ps1.setString(3,a.getAuthor());
			ps1.setString(4,a.getUserid());
			ps1.executeUpdate();
			return true;
			}
			PreparedStatement ps=conn.prepareStatement("insert into cart(name,author,price,quantity,total,userid) values (?,?,?,?,?,?)");
			
			ps.setString(1, a.getName());
			ps.setString(2, a.getAuthor());
			ps.setInt(3, a.getPrice());
			ps.setInt(4, a.getQuantity());
			ps.setInt(5, a.getTotal());
		    ps.setString(6, a.getUserid());
			
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

	public List getAllCart(String user) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps2=conn.prepareStatement("select * from cart where userid=?");
			ps2.setString(1, user);
			List list=new ArrayList();
			ResultSet rs=ps2.executeQuery();
			while(rs.next()){
				AddToCart a=new AddToCart();
				a.setId(rs.getInt("id"));
				a.setName(rs.getString("name"));
				a.setAuthor(rs.getString("author"));
				a.setPrice(rs.getInt("price"));
				a.setQuantity(rs.getInt("quantity"));
				a.setTotal(rs.getInt("total"));
				list.add(a);
			}
			return list;			
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	public boolean updateQuantity(AddToCart a) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			if(a.getQuantity()==0)
			{
				PreparedStatement ps4=conn.prepareStatement("delete from cart where id=?");
				ps4.setInt(1,a.getId());
				ps4.executeUpdate();
				return false;
			}
			else
			{
			PreparedStatement ps2=conn.prepareStatement("select quantity from book where name=?");
			ps2.setString(1, a.getName());
			ResultSet rs=ps2.executeQuery();
			while(rs.next()){
				if(a.getQuantity()>rs.getInt("quantity"))
					return false;
			}
			PreparedStatement ps1=conn.prepareStatement("update cart set quantity=?,total=? where id=?");
			ps1.setInt(1,a.getQuantity());
			ps1.setInt(2, a.getTotal());
			ps1.setInt(3,a.getId());
			ps1.executeUpdate();
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
