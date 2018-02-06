package com.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.book.connection.MyConnection;
import com.book.pojo.AddToCart;
import com.book.pojo.OrderMaster;

public class OrderMasterDaoImpl implements OrderMasterInterface{

	Connection conn=null;
	
	
	public List getAllElemenets() {
		conn=MyConnection.getConnectionObj();
		List<OrderMaster> OrderDetailsList=new ArrayList<OrderMaster>();
		
		try {
			
			PreparedStatement ps2=conn.prepareStatement("select * from orderplace");
		
			ResultSet rs=ps2.executeQuery();
			while(rs.next()){
				OrderMaster orderMaster=new OrderMaster();
				orderMaster.setId(rs.getInt("id"));
				orderMaster.setUserid(rs.getString("userid"));
				orderMaster.setName(rs.getString("name"));
				orderMaster.setAuthor(rs.getString("author"));
				orderMaster.setPrice(rs.getInt("price"));
				orderMaster.setQuantity(rs.getInt("quantity"));
				orderMaster.setTotal(rs.getInt("total"));
				OrderDetailsList.add(orderMaster);
			}
			return OrderDetailsList;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}


	public List getAllElemenetsByUserName(String userName) {
		conn=MyConnection.getConnectionObj();
		List<OrderMaster> OrderDetailsList=new ArrayList<OrderMaster>();
		
		try {
			
			PreparedStatement ps2=conn.prepareStatement("select * from order_details where user_name=?");
			ps2.setString(1, userName);
			ResultSet rs=ps2.executeQuery();
			while(rs.next()){
				OrderMaster orderMaster=new OrderMaster();
				orderMaster.setId(rs.getInt("order_id"));
				orderMaster.setName(rs.getString("name"));
				orderMaster.setAuthor(rs.getString("author"));
				orderMaster.setPrice(rs.getInt("price"));
				orderMaster.setQuantity(rs.getInt("quantity"));
				orderMaster.setTotal(rs.getInt("total"));
				orderMaster.setOrderDate(rs.getDate("order_date"));
				OrderDetailsList.add(orderMaster);
			}
			
			return OrderDetailsList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

}
