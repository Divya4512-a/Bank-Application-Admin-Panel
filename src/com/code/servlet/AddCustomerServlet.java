package com.code.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.code.dao.CustomerDao;
import com.code.database.DBConnect;
import com.code.entity.Customer;

/**
 * Servlet implementation class AddCustomer
 */
@WebServlet("/Customer_Registion")
public class AddCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String accNo = req.getParameter("accNo");
		String name = req.getParameter("name");
		double balance = Double.parseDouble(req.getParameter("balance"));
		
		Customer cust = new Customer(accNo, name, balance);
		CustomerDao dao = new CustomerDao(DBConnect.getConnect());
		boolean f = dao.addCustomer(cust);
		HttpSession session = req.getSession();
		if(f==true) {
			session.setAttribute("succMsg", "Insert value Successfully");
			resp.sendRedirect("addCustomer.jsp");
//			System.out.println("Insert value Successfully");
		}
		else {
			session.setAttribute("errorMsg", "Not Insert value");
			resp.sendRedirect("addCustomer.jsp");
//			System.out.println("Not Inserted");
		}
	}

}
