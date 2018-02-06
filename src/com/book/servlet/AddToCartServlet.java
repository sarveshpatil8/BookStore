package com.book.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.dao.AddCartIml;
import com.book.dao.AddCartInt;
import com.book.pojo.AddToCart;

/**
 * Servlet implementation class AddToCartServlet
 */
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		AddCartInt a1=new AddCartIml();
		if(session.getAttribute("user")!=null)
		{
		String userid=(String) session.getAttribute("user");
		List addcartlist=a1.getAllCart(userid);
		session.removeAttribute("addcartlist");
		session.setAttribute("addcartlist", addcartlist);
		}
		
		response.sendRedirect("CartDisplay.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String action=request.getParameter("action");
		if(action!=null && action.equals("addtocart"))
		{
			String name=request.getParameter("name");
			String author=request.getParameter("author");
			int price=Integer.parseInt(request.getParameter("price"));
			int quantity=Integer.parseInt(request.getParameter("quantity"));
			int total=price*quantity;
			String userid=(String) session.getAttribute("user");
			
			AddToCart a=new AddToCart();
			a.setName(name);
			
			a.setAuthor(author);
			a.setPrice(price);
			//a.setPrice(price);
			a.setQuantity(quantity);
			a.setTotal(total);
			a.setUserid(userid);
			
			System.out.println("user"+userid);
			
			AddCartInt intf=new AddCartIml();
			boolean bb=intf.addCart(a);
			if(bb){
				session=request.getSession();
				AddCartInt a1=new AddCartIml();
				List addcartlist=a1.getAllCart(userid);
				session.removeAttribute("addcartlist");
				session.setAttribute("addcartlist", addcartlist);
				response.sendRedirect("CartDisplay.jsp");
			}
			else
			{
				name=name.replace(" " ,"%20");
				response.sendRedirect("AddBookServlet?msg=not&Name="+name);
			}
			
         
		    
		
		}
		else
		{
			
			int quantity=Integer.parseInt(request.getParameter("quantity"));
			String name=request.getParameter("name");
			int id=Integer.parseInt(request.getParameter("id"));
			int price=Integer.parseInt(request.getParameter("price"));
			
			AddToCart a=new AddToCart();
			
			if(quantity==0)
			{
				a.setQuantity(quantity);
				a.setId(id);
				AddCartInt intf=new AddCartIml();
				boolean bb=intf.updateQuantity(a);
				
				
				if(bb){
					response.sendRedirect("AddToCartServlet");
				}else{
					response.sendRedirect("CartDisplay.jsp?msg=not");	
				}
			}
			
			else
			{
			a.setQuantity(quantity);
			a.setTotal(quantity * price);
			a.setId(id);
			a.setName(name);
			AddCartInt intf=new AddCartIml();
			boolean bb=intf.updateQuantity(a);
			
			if(bb){
				response.sendRedirect("AddToCartServlet");
			}else{
				response.sendRedirect("CartDisplay.jsp?msg=not");	
			}
			}

		}
		
			
	}

}
