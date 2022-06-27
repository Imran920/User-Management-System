<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit here</title>
<%@include file="design.jsp"%>
</head>
<body>
<%@include file="normal_nav.jsp"%>

<main class="primary-background" style="padding-bottom: 50px">
		<div class="container">
			<div class="col-md-6 offset-md-2">
				<div class="card">
					<div class="card-header text-center bg-dark text-white">
						<span class="fa fa-3x fa-user-plus"></span> <br> Edit Here
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath }/register" method="post">
						<input type="hidden" value="${user.id }" name="id"/>
							<div class="form-group">
								<label for="user_name">User Name</label> <input name="name"
									type="text" class="form-control" id="user_name" value="${user.name }"
								required aria-describedby="emailHelp"
									placeholder="Enter user name">
							</div>
							<div class="form-group">
								<input type="hidden"
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" value="${user.email }" aria-describedby="emailHelp"
									placeholder="Enter email">
							</div>
							<div class="form-group">
								<input type="hidden"
									name="password" type="password" class="form-control"
									id="exampleInputPassword1" value="${user.password }" placeholder="Password">
							</div>
							<div class="form-group">
								<label for="exampleInputNumber">Phone</label> <input
									name="phone" type="number" class="form-control"
									id="exampleInputNumber" value="${user.phone }" required
									placeholder="Enter mobile number">
							</div>
							<div class="form-group">
								<label for="start">Date of birth</label> <input type="date"
									name="dob" value="${user.dob }" required>
							</div>
							<div class="form-group">
								<label>Select City</label> <select class="form-control"
									name="city" value="${user.city }">
									<option selected disabled="">--Select city--</option>
									<option>Butwal</option>
									<option>Kathmandu</option>
									<option>Nepalgunj</option>
									<option>Pokhara</option>
								</select>
							</div>
							<br>
							<button type="submit" class="btn btn-dark">Update</button>
							<button type="reset" class="btn btn-dark">Cancel</button>
						</form>
					</div>

				</div>
			</div>
	</main>

</body>
</html>