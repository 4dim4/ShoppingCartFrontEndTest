<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home | E-Shopper</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/prettyPhoto.css" rel="stylesheet">
<link href="resources/css/price-range.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="resources/js/html5shiv.js"></script>
    <script src="resources/js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

</head>
<body>


	<section id="form">
		<!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form">
						<!--login form-->
						<h2>Login to your account</h2>
						<c:if test="${invalidCredentials==true}">
						${errorMessage}
						</c:if>
					
						<c:url var="action" value="/login"></c:url>

						<form:form action="${action}" method="post">
							<input type="text" placeholder="Username" name="name" />
							<input type="password" placeholder="Password" name="password" />
							<span> <input type="checkbox" class="checkbox">
								Keep me signed in
							</span>
							<button type="submit" class="btn btn-default">Login</button>
							</form:form>
					</div>
					<!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form">
						<!--sign up form-->
						<h2>New User Signup!</h2>
						
						<form:form modelAttribute="user">
							<form:input path="id" pattern=".{4,7}" title="id should contains 4 to 7 characters" 
								placeholder="ID" />
							
								<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('id')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
							<form:input path="name"  placeholder="Name" 
								 />
								 
								 <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
							
							<form:input path="password"  pattern=".{4,15}" title="password should contains 4 to 15 characters"
								placeholder="Password"
								 />
							
							<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
							
							<form:input type="tel"  path="mobile" pattern="^\d{10}$" title="Please enter valid mobile number"
								placeholder="Mobile" 
								 />
								 
								 <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					
							<form:input type="email"  path="mail" placeholder="Email" />
							
							<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mail')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
							
							<form:input path="address" placeholder="Address" />
							
							<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
							
							
							<button name="_eventId_submit" type="submit" class="btn btn-default">Signup</button>
						</form:form>
					</div>
					<!--/sign up form-->
				</div>
			</div>
		</div>
	</section>
	<!--/form-->





	

</body>
</html>