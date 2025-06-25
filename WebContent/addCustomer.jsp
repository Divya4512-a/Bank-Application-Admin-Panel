<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allcss.jsp"%>
<style type="text/css">
.body {
	background-color: #f3f0ff;
}

.card-body {
	margin: 100px;
}
</style>
</head>
<body class="body">
	<div class="container-fluid p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h1>Add Customer Account</h1>
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" />
						</c:if>
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" />
						</c:if>
						<form action="Customer_Registion" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Account
									Number</label> <input type="text" class="form-control" name="accNo"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Customer
									Name</label> <input type="text" class="form-control" name="name"
									id="exampleInputPassword1">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Balance</label>
								<input type="text" class="form-control" name="balance">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
							<a href="adminDashboard.jsp" class="btn btn-primary" >Go to Admin Dashboard</a>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>