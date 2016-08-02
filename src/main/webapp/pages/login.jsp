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
					<li><a href="logout">Home</a></li>
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

</body>
</html>