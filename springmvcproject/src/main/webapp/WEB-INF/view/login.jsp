<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login here</title>
<%@include file="design.jsp"%>
</head>
<body>
<%@include file="nav_login.jsp"%>
<main class="d-flex align-items-center primary-background"
		style="height: 80vh">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header bg-dark text-white text-center">
							<span class="fa fa-user-circle fa-3x"></span> <br>
							<p>Login Here</p>
						</div>
						<div class="card-body">
							<form action="login" method="post" class="form">
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										name="email" required type="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										placeholder="Enter email">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										name="password" required type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<div class="container text-center">
									<button type="submit" class="btn btn-dark">Login</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>