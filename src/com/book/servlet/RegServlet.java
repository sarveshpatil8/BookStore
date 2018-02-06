package com.book.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.dao.UserInfoIml;
import com.book.dao.UserInfoInt;
import com.book.pojo.UserInfo;

/**
 * Servlet implementation class RegServlet
 */
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=3;
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String address=request.getParameter("address");
		Long mobileno=Long.parseLong(request.getParameter("mobileno"));
		String emailid=request.getParameter("emailid");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String usertype=request.getParameter("usertype");
		
		UserInfo u=new UserInfo();
		
		u.setId(id);
		u.setFname(fname);
		u.setLname(lname);
		u.setAddress(address);
		u.setMobileNo(mobileno);
		u.setEmailid(emailid);
		u.setUserId(username);
		u.setPassword(password);
		u.setUserType(usertype);
		
		UserInfoInt intf=new UserInfoIml();
		boolean ab=intf.addUser(u);
		if(ab)
			response.sendRedirect("Login.jsp");
		else
			response.sendRedirect("Error.jsp");
		
	}

}
