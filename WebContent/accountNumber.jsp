<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="allcss.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<div class="container-fluid p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h2 class="text-center">Customer Details By Account</h2>

						<form action="customerDetailsByACC" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Account
									Number</label> <input type="text" class="form-control" name="accNo"
									placeholder="Enter account Number" required="required">

							</div>


							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>