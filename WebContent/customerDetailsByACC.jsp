<%@page import="com.code.database.DBConnect"%>
<%@page import="com.code.dao.CustomerDao"%>
<%@page import="com.code.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="allcss.jsp"%>
</head>
<body>
	<table class="table table-success table-striped">
		<thead>
			<tr>
				<th scope="col">Account Number</th>
				<th scope="col">Customer Name</th>
				<th scope="col">Balance In Account</th>
				<th scope="col">Actions</th>
			</tr>
		</thead>
		<tbody>
			<%
				Customer cust = (Customer) session.getAttribute("custObj");
			CustomerDao dao = new CustomerDao(DBConnect.getConnect());
			%>
			<tr>
				<td><%=cust.getAccNo()%></td>
				<td><%=cust.getName()%></td>
				<td><%=cust.getBalance()%></td>
				<td><a href="deposit.jsp?accNo=<%=cust.getAccNo()%>"
					class="btn btn-success">Deposit</a> <a href=""
					class="btn btn-success">Withdraw</a></td>

			</tr>

		</tbody>
	</table>
	<div style="text-align: center; margin-top: 20px;">
		<button onclick="window.location.href='adminDashboard.jsp'">
			Go to Admin Dashboard</button>
	</div>


</body>
</html>