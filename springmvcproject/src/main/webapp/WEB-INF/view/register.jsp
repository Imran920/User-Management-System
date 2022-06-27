<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<%@include file="design.jsp"%>
</head>
<body>
	<%@include file="nav_reg.jsp"%>
	<main class="primary-background" style="padding-bottom: 50px">
		<div class="container">
			<div class="col-md-6 offset-md-2">
				<div class="card">
					<div class="card-header text-center bg-dark text-white">
						<span class="fa fa-3x fa-user-plus"></span> <br> Register
						Here
					</div>
					<div class="card-body">
						<form action="register" method="post" class="form">
							<div class="form-group">
								<label for="user_name">User Name</label> <input name="name"
									type="text" class="form-control" id="user_name"
									aria-describedby="emailHelp" placeholder="Enter user name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>
							<div class="form-group">
								<label for="exampleInputNumber">Phone</label> <input
									name="phone" type="number" class="form-control"
									id="exampleInputNumber" placeholder="Enter mobile number">
							</div>
							<div class="form-group">
								<label for="start">Date of birth</label> <input type="date"
									id="date" name="dob" value="2018-07-22" min="1960-01-01"
									max="2022-12-31">
							</div>
							<div class="form-group">
								<label>Select Address</label> <select class="form-control"
									name="city">
									<option selected disabled="">--Select city--</option>
									<option>Butwal</option>
									<option>Kathmandu</option>
									<option>Nepalgunj</option>
									<option>Pokhara</option>
								</select>
							</div>
							<br>
							<button id="submit-btn" type="submit" class="btn btn-dark">Register</button>
							<button id="reset-btn" type="reset" class="btn btn-dark">Cancel</button>

						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>