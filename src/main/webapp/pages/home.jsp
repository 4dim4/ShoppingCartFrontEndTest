<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">
<head>
<title>ShoppingCart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<style type="text/css">
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

body {
	background: url('C:\Users\SUTTA\workspace\ShoppingCartFrontEndTest\src\main\webapp\resources\dota.jpg');
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

			<!-- Logo -->
			<div class="navbar-header">
				<a href="#" class="navbar-brand">SHOPPING CART</a>
			</div>

			<!-- Menu Items -->
			<div>
				<ul class="nav navbar-nav">
					<li><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
						<c:choose>
						<c:when test="${empty loggedInUser}">
							<li><a href="#" data-toggle="modal" data-target="#popUp"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</c:when>
						<c:when test="${not empty loggedInUser}">
							<li><a href="#"><span
									class="glyphicon glyphicon-shopping-cart">Cart</span> </a>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><span
									class="glyphicon glyphicon-user">Welcome</span> </a>
								<ul class="dropdown-menu">
									<li><a href="logout">Logout</a></li>

								</ul></li>
						</c:when>

					</c:choose>


				</ul>
			</div>

		</div>
	</nav>

<c:if test="${empty loggedInUser}">
		<div class="modal fade" id="popUp">


			<div class="modal-dialog">
				<div class="modal-content">

					<!-- header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<br>
						<ul class="nav nav-pills nav-justified">
							<li class="active"><a data-toggle="pill" href="#login">Login</a></li>
							<li><a data-toggle="pill" href="#register">Register</a></li>

						</ul>
					</div>
					<div class="tab-content">

						<div id="login" class="tab-pane fade in active">
							<!-- body (form) -->
							<c:url var="action" value="/login"></c:url>

							<form:form action="${action}" method="post">

								<div class="modal-body">

									<div class="form-group">
										<input type="text" name="name" class="form-control"
											placeholder="ID">
									</div>
									<div class="form-group">
										<input type="password" name="password" class="form-control"
											placeholder="Password">
									</div>

								</div>

								<!-- button -->
								<div class="modal-footer">
									<div class="form-group">
										<input type="submit" name="login-submit" id="login-submit"
											class="form-control btn btn-primary" value="Login">
									</div>
								</div>
							</form:form>
						</div>



						<div id="register" class="tab-pane fade">



						<!-- body (form) -->
					<form:form action="here/register" method="post"
						modelAttribute="user">
						<div class="modal-body">

							<div class="form-group">
								<form:input path="id" pattern=".{4,7}" required="true"
									class="form-control" placeholder="ID"
									title="id should contains 4 to 7 characters" />
							</div>
							<div class="form-group">
								<form:input path="name" required="true" class="form-control" placeholder="Name"
									title="name should not be empty" />
							</div>
							<div class="form-group">
								<form:input path="password" pattern=".{4,15}" required="true" placeholder="Password"
									class="form-control"
									title="password should contains 4 to 15 characters" />
							</div>
							<div class="form-group">
								<form:input type="tel" path="mobile" pattern="^\d{10}$" placeholder="Mobile"
									class="form-control" required="true"
									title="Please enter valid mobile number" />
							</div>
							<div class="form-group">
								<form:input type="email" path="mail" class="form-control" placeholder="Email" />
							</div>
							<div class="form-group">
								<form:input path="address" required="true" class="form-control" placeholder="Address" />
							</div>

							<!-- <div class="form-group">
									<input type="password" name="confirm-password"
										id="confirm-password" class="form-control"
										placeholder="Confirm Password">
								</div>  
								-->

						</div>


						<!-- button -->
						<div class="modal-footer">
							<div class="form-group">
								<input type="submit" name="register-submit" id="register-submit"
									class="form-control btn btn-primary" value="Register">
							</div>

						</div>

					</form:form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</c:if>

