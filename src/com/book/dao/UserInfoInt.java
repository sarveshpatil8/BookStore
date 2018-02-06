package com.book.dao;

import com.book.pojo.UserInfo;

public interface UserInfoInt {
	public boolean addUser(UserInfo u);
	public boolean login(UserInfo u);
}
