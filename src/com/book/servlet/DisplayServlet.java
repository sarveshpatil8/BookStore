package com.book.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.dao.BookImp;
import com.book.dao.BookInt;

/*
 * Servlet implementation class DisplayServlet
 */

public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public DisplayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		BookInt intf=new BookImp();
		
		List Booklist=intf.getAllData();
		session.removeAttribute("Booklist");
		session.setAttribute("Booklist", Booklist);
		
		
		List Authorlist=intf.getAllAuthors();
		session.removeAttribute("Authorlist");
		session.setAttribute("Authorlist", Authorlist);
		response.sendRedirect("index.jsp");
	}  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
