<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users Detail</title>
<%@include file="design.jsp"%>
</head>
<body>
	<%@include file="normal_nav.jsp"%>
	<h3 class="text-center">List of User</h3>
	<table class="table table-striped table-dark text-center">
		<thead>
			<tr>
				<th colspan="col">Id</th>
				<th colspan="col">Name</th>
				<th colspan="col">Email</th>
				<th colspan="col">phone</th>
				<th colspan="col">DOB</th>
				<th colspan="col">Address</th>
				<th colspan="col">Action</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${user }" var="p">
		<tr>
		<th colspan="row"> ${p.id } </th>
		<td>${p.name }  </td>
		<td>${p.email }</td>
		<td> ${p.phone } </td>
		<td> ${p.dob } </td>
		<td> ${p.city } </td>
		<td>
		<a href="delete/${p.id }"><i class="fa-solid fa-trash-can text-danger"></i></a>
		<a href="update/${p.id }"><i class="fa-solid fa-user-pen text-success"></i></a>
		</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>

</body>
</html>
</body>
</html>
