package com.book.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.dao.OrderMasterDaoImpl;
import com.book.dao.OrderMasterInterface;
import com.book.pojo.OrderMaster;

/**
 * Servlet implementation class OrderMasterServlet
 */
public class OrderMasterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderMasterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String action=request.getParameter("action");
		
		if(action!=null && action.equals("getAllElements")){
			OrderMasterInterface orderMasterInterface=new OrderMasterDaoImpl();
			
			List<OrderMaster> OrderDetailsList=orderMasterInterface.getAllElemenets();
			
			session.removeAttribute("OrderDetailsList");
			session.setAttribute("OrderDetailsList", OrderDetailsList);
			response.sendRedirect("all_orders.jsp");
			
			
		}else if(action!=null && action.equals("getAllElementsByUser")){
			OrderMasterInterface orderMasterInterface=new OrderMasterDaoImpl();
			String userName=(String)session.getAttribute("user");
			List<OrderMaster> OrderDetailsListByUser=orderMasterInterface.getAllElemenetsByUserName(userName);
			
			session.removeAttribute("OrderDetailsListByUser");
			session.setAttribute("OrderDetailsListByUser", OrderDetailsListByUser);
			response.sendRedirect("my_orders.jsp");
			
			
		}else{}
		
		
	}

}
