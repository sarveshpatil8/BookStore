package com.book.dao;

import java.util.List;
import com.book.pojo.AddToCart;

public interface AddCartInt {
	
	public boolean addCart(AddToCart a);
	public List getAllCart(String user);
	public boolean updateQuantity(AddToCart a);
}
