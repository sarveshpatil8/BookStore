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
import com.book.pojo.Book;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		HttpSession session=request.getSession();
		BookInt intf=new BookImp();
		List list=intf.getAllDataId(id);
		session.removeAttribute("list");
		session.setAttribute("list", list);
		response.sendRedirect("UpdateData.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name,author,category,information;
		int quantity;
	//	int price;
		HttpSession session=request.getSession();
		name=request.getParameter("name");
		author=request.getParameter("author");
		category=request.getParameter("category");
		information=request.getParameter("information");
		System.out.println("price111....");
/*		price=Integer.parseInt(request.getParameter("price"));*/
		int id=Integer.parseInt(request.getParameter("id"));
		int p=Integer.parseInt(request.getParameter("price1"));
		System.out.println("price...."+p);
		quantity=Integer.parseInt(request.getParameter("quantity"));
		
		Book m=new Book();
		m.setId(id);
		m.setName(name);
		m.setAuthor(author);
		m.setCategory(category);
		m.setInformation(information);
		m.setPrice(p);
		m.setQuantity(quantity);
		
		
		BookImp intf=new BookImp();
		boolean bb=intf.updateData(m);
		List Booklist=intf.getAllData();
		session.removeAttribute("Booklist");
		session.setAttribute("Booklist", Booklist);
		response.sendRedirect("Display.jsp");
	}

}
