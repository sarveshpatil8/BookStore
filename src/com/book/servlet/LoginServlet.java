package com.book.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.connection.MyConnection;
import com.book.dao.UserInfoIml;
import com.book.dao.UserInfoInt;
import com.book.pojo.UserInfo;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String usertype;
		UserInfo u = new UserInfo();
		u.setUserId(username);
		u.setPassword(password);
		// u.setUserType(usertype);
		UserInfoInt intf = new UserInfoIml();
		boolean ab = intf.login(u);
		System.out.println("Ab" + ab);

		Connection conn = null;
		try {

			if (ab == true) {
				conn = MyConnection.getConnectionObj();
				PreparedStatement ps = conn.prepareStatement("select * from usertable where UserId=? ");
				ps.setString(1, u.getUserId());
				ResultSet rs = ps.executeQuery();
				rs.next();
				usertype = rs.getString(9);
				System.out.println(usertype);
				session.removeAttribute("user");
				session.setAttribute("user", username);
				if (usertype.equals("User"))
					response.sendRedirect("DisplayServlet");
				else
					response.sendRedirect("AdminPage.jsp");
			} else {
				response.sendRedirect("Login.jsp?message=invalid");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}