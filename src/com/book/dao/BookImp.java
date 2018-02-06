package com.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.book.connection.MyConnection;
import com.book.pojo.Book;

public class BookImp implements BookInt {
	
	public boolean addData(Book b) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("insert into Book(name,author,category,information,price,quantity) values (?,?,?,?,?,?)");
			ps.setString(1, b.getName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getCategory());
			ps.setString(4, b.getInformation());
			ps.setInt(5, b.getPrice());
			ps.setInt(6, b.getQuantity());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

	public boolean updateData(Book b) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("update Book set name=?,Author=?,category=?,information=?,price=?,quantity=? where id=?");
			ps.setString(1, b.getName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getCategory());
			ps.setString(4, b.getInformation());
			ps.setInt(5, b.getPrice());
			ps.setDouble(6, b.getQuantity());
			ps.setInt(7, b.getId());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	public boolean deleteData(int id) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("delete from Book where id=?");
			ps.setInt(1,id );
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	public List getAllData() {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("select * from Book");
			ResultSet rs=ps.executeQuery();
			List list=new ArrayList();
			while(rs.next())
			{
				Book b=new Book();
				b.setId(rs.getInt("id"));
				b.setName(rs.getString("name"));
				b.setAuthor(rs.getString("author"));
				b.setQuantity(rs.getInt("quantity"));
				b.setCategory(rs.getString("category"));
				b.setInformation(rs.getString("information"));
				b.setPrice(rs.getInt("price"));
				b.setImage(rs.getString("image"));
				
				list.add(b);
			}
			return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			
		return null;
	}

	public List getAllDataId(int id) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("select * from Book where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			List list=new ArrayList();
			while(rs.next())
			{
				Book b=new Book();
				b.setId(rs.getInt("id"));
				b.setName(rs.getString("name"));
				b.setAuthor(rs.getString("author"));
				b.setQuantity(rs.getInt("quantity"));
				b.setCategory(rs.getString("category"));
				b.setInformation(rs.getString("information"));
				b.setPrice(rs.getInt("price"));
				b.setImage(rs.getString("image"));
				list.add(b);
			}
			return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
	
		return null;
	}

	
	public List getAllCatBook(String cat) {
		// TODO Auto-generated method stub
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("select * from Book where category=?");
			ps.setString(1, cat);
			ResultSet rs=ps.executeQuery();
			List list=new ArrayList();
			while(rs.next())
			{
				Book b=new Book();
				b.setId(rs.getInt("id"));
				b.setName(rs.getString("name"));
				b.setAuthor(rs.getString("author"));
				b.setQuantity(rs.getInt("quantity"));
				b.setCategory(rs.getString("category"));
				b.setInformation(rs.getString("information"));
				b.setPrice(rs.getInt("price"));
				b.setImage(rs.getString("image"));
				list.add(b);
				
			}
			System.out.println(" List size.... "+list.size());
			return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
		
		
		return null;
	}

	public List getAllAuthors() {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("select DISTINCT Author from Book");
			ResultSet rs=ps.executeQuery();
			List list=new ArrayList();
			while(rs.next())
			{
				Book b=new Book();
				b.setAuthor(rs.getString("author"));
				list.add(b);
			}
			return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
	return null;
	}

	public List getAllAuthorBook(String Author) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			PreparedStatement ps=conn.prepareStatement("select * from Book where Author=?");
			ps.setString(1, Author);
			ResultSet rs=ps.executeQuery();
			List list=new ArrayList();
			while(rs.next())
			{
				Book b=new Book();
				b.setId(rs.getInt("id"));
				b.setName(rs.getString("name"));
				b.setAuthor(rs.getString("author"));
				b.setQuantity(rs.getInt("quantity"));
				b.setCategory(rs.getString("category"));
				b.setInformation(rs.getString("information"));
				b.setPrice(rs.getInt("price"));
				b.setImage(rs.getString("images"));
				list.add(b);
			}
			return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
		return null;
	}

	

	public List getAllBook(String Name) {
			Connection conn=null;
			try{
				conn=MyConnection.getConnectionObj();
				PreparedStatement ps=conn.prepareStatement("select * from Book where Name=?");
				ps.setString(1, Name);
				ResultSet rs=ps.executeQuery();
				List list=new ArrayList();
				while(rs.next())
				{
					Book b=new Book();
					b.setId(rs.getInt("id"));
					b.setName(rs.getString("name"));
					b.setAuthor(rs.getString("author"));
					b.setQuantity(rs.getInt("quantity"));
					b.setCategory(rs.getString("category"));
					b.setInformation(rs.getString("information"));
					b.setPrice(rs.getInt("price"));
					b.setImage(rs.getString("image"));
					list.add(b);
				}
				return list;
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
				
			return null;
		}

}
