<%@page import="com.code.database.DBConnect"%>
<%@page import="com.code.dao.CustomerDao"%>
<%@page import="com.code.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allcss.jsp" %>
</head>
<body>
<%
	String acc = request.getParameter("accNo");
	CustomerDao dao = new CustomerDao(DBConnect.getConnect());
	Customer cust=dao.viewCustomerByAcc(acc);
%>
<div class="container-fluid p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h1>Deposit amount</h1>
						
						<c:if test="${not empty errorObj }">
						<p class="text-center text-danger">${errorObj} </p>
						<c:remove var="errorObj"/>
						</c:if>
						<form action="updateDeposit" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Account Number</label> 
								<input type="text" class="form-control" name="accNo" value="<%=cust.getAccNo() %>"
									id="exampleInputEmail1" aria-describedby="emailHelp" readonly="readonly">
								
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Customer Name</label>
								<input type="text" class="form-control" name="name" value="<%=cust.getName() %>"
									id="exampleInputPassword1" readonly="readonly">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Balance</label>
								<input type="text" class="form-control" name="balance" value="<%=cust.getBalance() %>">
							</div>
							<input type="hidden" name="accNo" value="<%=cust.getAccNo() %>">
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>