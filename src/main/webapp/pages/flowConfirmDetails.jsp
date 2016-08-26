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

<div class="jumbotron">
	<section id="form">
		<!--form-->
	
		<div class="container">
		
	
			<div class="row">
				
							
				<div class="col-sm-4 col-sm-offset-4 panel panel-default">
			
					<div class="signup-form">
						<!--sign up form-->
						<div class="panel-heading">New User Signup!</div>
				
						<form:form modelAttribute="user" method="post">
						
					  
						<form:input path="id" disabled="true" readonly="true" />
							
								<form:input path="name" disabled="true" readonly="true" />
							
							<form:input path="password" disabled="true" readonly="true" />
							
							<form:input path="mobile" disabled="true" readonly="true" />
							
						    <form:input path="mail" disabled="true" readonly="true" />
						   
							<form:input path="address" disabled="true" readonly="true" />
							<div class="col-sm-4">
							<button name="_eventId_edit" type="submit" class="btn btn-default">Edit</button>
							</div>
							<div class="col-sm-5">
							<button name="_eventId_submit" type="submit" class="btn btn-default">Confirm Details</button>
								</div>
							<br/>
						</form:form>
					</div>
				
					<!--/sign up form-->
				</div>
			</div>
		</div>
	
	</section>
	<!--/form-->

</div>



	

</body>
</html>