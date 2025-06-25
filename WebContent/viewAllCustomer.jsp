<%@page import="com.code.entity.Customer"%>
<%@page import="java.util.List"%>
<%@page import="com.code.database.DBConnect"%>
<%@page import="com.code.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allcss.jsp" %>
</head>
<body>
<table class="table table-success table-striped">
  <thead>
    <tr>    
      <th scope="col">Account Number</th>
      <th scope="col">Customer Name</th>
      <th scope="col">Balance In Account</th>
    </tr>
  </thead>
  <tbody>
 <%
	CustomerDao dao = new CustomerDao(DBConnect.getConnect());
	List<Customer> list = dao.viewAllCustomer();
	for(Customer cust:list){
%>		
	<tr>   
      <td><%=cust.getAccNo() %></td>
      <td><%=cust.getName() %></td>
      <td><%=cust.getBalance() %></td>
    </tr>   
   <% }%>
  </tbody>
</table>
<div style="text-align: center; margin-top: 30px;">
    <a href="adminDashboard.jsp" class="btn btn-primary">← Back</a>
</div>
</body>
</html>