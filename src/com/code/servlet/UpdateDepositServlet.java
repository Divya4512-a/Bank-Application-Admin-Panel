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
 * Servlet implementation class UpdateDepositData
 */
@WebServlet("/updateDeposit")
public class UpdateDepositServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDepositServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acc = request.getParameter("accNo");
		String name = request.getParameter("name");
		double balance = Double.parseDouble(request.getParameter("balance"));
		Customer cust = new Customer(acc, name, balance);
		CustomerDao dao = new CustomerDao(DBConnect.getConnect());
		boolean f = dao.deposit(cust);
		HttpSession session = request.getSession();
		if(f==true) {
			session.setAttribute("succObj", "Update balance");
			response.sendRedirect("adminDashboard.jsp");
//			System.out.println("Update balance");
		}
		else {
			session.setAttribute("errorObj", "Not Update balance");
			response.sendRedirect("deposit.jsp");
//			System.out.println("Not");
		}
	}

}
