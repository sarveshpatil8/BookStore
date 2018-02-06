package com.book.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.dao.BookImp;
import com.book.pojo.Book;

/**
 * Servlet implementation class AddServlet
 */
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String name,author, category ,information;
		double size;
	//	int price, 
		int quantity, p;
		name=request.getParameter("name");
		author=request.getParameter("author");
		category=request.getParameter("category");
		information=request.getParameter("information");
		quantity=Integer.parseInt(request.getParameter("quantity"));
		System.out.println("price111....");
/*		price=Integer.parseInt(request.getParameter("price"));*/
		p=Integer.parseInt(request.getParameter("price1"));
		System.out.println("price...."+p);
		
		
		Book b=new Book();
		b.setName(name);
		b.setAuthor(author);
		b.setCategory(category);
		b.setInformation(information);
		b.setQuantity(quantity);
		b.setPrice(p);
		
		BookImp intf=new BookImp();
		boolean bb=intf.addData(b);
		if(bb)
		{
			List Booklist=intf.getAllData();
			session.removeAttribute("Booklist");
			session.setAttribute("Booklist", Booklist);
			response.sendRedirect("AddBook.jsp");
		}
	}

}
