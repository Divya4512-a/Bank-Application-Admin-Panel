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
 * Servlet implementation class CustomerDetails_ACC_Servlet
 */
@WebServlet("/customerDetailsByACC")
public class CustomerDetails_ACC_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerDetails_ACC_Servlet() {
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
		String acc = req.getParameter("accNo");
		CustomerDao dao = new CustomerDao(DBConnect.getConnect());
		
		Customer cust=dao.viewCustomerByAcc(acc);
		HttpSession session = req.getSession();
		if(cust!=null) {
			session.setAttribute("custObj", cust);
			resp.sendRedirect("customerDetailsByACC.jsp");
		}
		else {
			resp.sendRedirect("accountNumber.jsp");
		}
	}

}
