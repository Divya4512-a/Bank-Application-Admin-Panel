<%@page import="com.code.database.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
<%-- <%
	Connection con = DBConnect.getConnect();
	out.print(con);
%> --%>
	<div class="container-fluid p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h2 class="text-center">Admin Login</h2>
						<c:if test="${not empty error }">
						<p class="text-center text-danger">${error} </p>
						<c:remove var="error"/>
						</c:if>
						<form action="login" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email</label> 
								<input type="email" class="form-control" name="email"
									id="exampleInputEmail1" aria-describedby="emailHelp">
								
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="password"
									id="exampleInputPassword1">
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