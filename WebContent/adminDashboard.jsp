<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="allcss.jsp"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<style type="text/css">
body {
	background-image: url("images/bank.jpg");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
}

.cards {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 100px;
	margin: 20px;
	padding: 20px;
}

.card {
	width: 400px;
	height: auto;
	padding: 20px;
	background-color: transparent;
	border: 2px solid #ccc;
	border-radius: 10px;
	box-shadow: 5px 5px 10px gray;
	text-align: center;
}

.card h5 {
	font-size: 24px;
	font-weight: bold;
	font-family: Arial;
}

.card p {
	text-align: center;
	line-height: 1.6;
	letter-spacing: 1px;
}

.card a.btn {
	margin-top: 10px;
	display: inline-block;
}
</style>
</head>
<body class="body">
	<%@ include file="navbar.jsp"%>

	<div class="cards">
		<div class="card">
			<div class="card-body">
				<i class="bi bi-person-add" style="font-size: 40px; color: #007bff;"></i>
				<h5 class="card-title">New Account</h5>
				<p class="card-text">Open a new savings or current account
					easily. Provide basic details and get started with banking in a few
					simple steps.</p>
				<a href="addCustomer.jsp" class="btn btn-primary">Add Account</a>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<i class="bi bi-people-fill"
					style="font-size: 40px; color: #28a745;"></i>
				<h5 class="card-title">Customer Details</h5>
				<p class="card-text">View complete details of all registered
					customers including account number, name, and available balance.</p>
				<a href="viewAllCustomer.jsp" class="btn btn-primary">View
					Customer Details</a>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<i class="bi bi-search" style="font-size: 40px; color: #dc3545;"></i>
				<h5 class="card-title">Customer Details By Account</h5>
				<p class="card-text">Search and view details of a customer by
					entering their account number. Quick access to individual account
					information.</p>
				<a href="accountNumber.jsp" class="btn btn-primary">Customer
					Details By Account</a>
			</div>
		</div>
	</div>
</body>
</html>
