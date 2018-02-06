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
import com.book.dao.AddPaymentIml;
import com.book.dao.AddPaymentInt;
import com.book.pojo.AddToPayment;

/**
 * Servlet implementation class Paymentservlet
 */
public class Paymentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Paymentservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String userid=(String) session.getAttribute("user");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		String ccnumber=request.getParameter("ccnumber");
		String cvvnumber=request.getParameter("cvvnumber");
		String cname=request.getParameter("cname");
		String zipcode=request.getParameter("zipcode");
		String shippingaddress=request.getParameter("shippingaddress");
		String userid=(String) session.getAttribute("user");
		
		AddToPayment a=new AddToPayment();
		
		a.setccnumber(ccnumber);		
		a.setcname(cname);
		a.setcvvnumber(cvvnumber);
		a.setzipcode(zipcode);
		a.setshippingaddress(shippingaddress);
		a.setUserid(userid);
		
		System.out.println("user"+userid);
		
		AddPaymentInt intf=new AddPaymentIml();
		boolean bb=intf.addpayment(a);
		
		if(bb){
			response.sendRedirect("finalpage.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
		
	}

}
