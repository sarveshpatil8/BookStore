package com.book.pojo;

public class UserInfo {
	private int Id;
	Long MobileNo;
	String Fname, Lname, UserId, Password, Address, Emailid,UserType;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public Long getMobileNo() {
		return MobileNo;
	}
	public void setMobileNo(long mobileno) {
		MobileNo = mobileno;
	}
	public String getFname() {
		return Fname;
	}
	public void setFname(String fname) {
		Fname = fname;
	}
	public String getLname() {
		return Lname;
	}
	public void setLname(String lname) {
		Lname = lname;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getEmailid() {
		return Emailid;
	}
	public void setEmailid(String emailid) {
		Emailid = emailid;
	}
	public String getUserType() {
		return UserType;
	}
	public void setUserType(String userType) {
		UserType = userType;
	}
	

}
