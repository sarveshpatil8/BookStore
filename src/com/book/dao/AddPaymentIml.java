package com.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.book.connection.MyConnection;
import com.book.pojo.AddToPayment;

public class AddPaymentIml implements AddPaymentInt {
	public boolean addpayment(AddToPayment a) {
		Connection conn=null;
		try{
			conn=MyConnection.getConnectionObj();
			
			ResultSet resultset = null;
			String uid=a.getUserid();
			//Statement stat = null;
			String cartquery = "select quantity,name,userid from cart where UserID = ? ";
			//stat=conn.createStatement();
			PreparedStatement ps0=conn.prepareStatement(cartquery);
			ps0.setString(1,uid);
			resultset=ps0.executeQuery();
			//System.out.println("The start of while loop--------->");
			while(resultset.next()){
				String vuid = resultset.getString("UserId");
				String quant = resultset.getString("Quantity");
				String name  = resultset.getString("Name");
				//System.out.println("Insidethe  while loop...............The uid is :"+uid);
				//System.out.println("The newquantity"+quant +"the book name is:"+name+"The USERID is :"+vuid);
				//if(vuid==uid){
					//System.out.println("The newquantity"+quant +"the book name is:"+name);
					String quantquery="UPDATE book SET quantity = quantity - ? where Name = ? ";
					PreparedStatement ps1=conn.prepareStatement(quantquery);
					ps1.setString(1,quant);
					ps1.setString(2,name);
					ps1.executeUpdate();
				//}
			}	
			
			
			PreparedStatement ps=conn.prepareStatement("insert into creditcard(cnumber,cname,cvvnumber,zipcode,userid,saddress) values (?,?,?,?,?,?)");
			
			ps.setString(1, a.getccnumber());
			ps.setString(2, a.getcname());
			ps.setString(3, a.getcvvnumber());
			ps.setString(4, a.getzipcode());
		    ps.setString(5, a.getUserid());
		    ps.setString(6, a.getshippingaddress());
			ps.executeUpdate();
			String orderquery  = "INSERT INTO orderplace(id,name,author,quantity,price,total,userid) SELECT id,Name,Author,Quantity,Price,Total,UserId FROM cart WHERE UserId='"+a.getUserid()+"'";
			PreparedStatement ps2=conn.prepareStatement(orderquery);
			ps2.executeUpdate();
			String query="Delete from cart where UserId='"+a.getUserid()+"'";
			PreparedStatement ps1=conn.prepareStatement(query);
			ps1.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}
}
