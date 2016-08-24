<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">

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
						<form:form action="here/register" method="post" commandName="user">
							<form:input path="id" pattern=".{4,7}" required="true"
								placeholder="ID" title="id should contains 4 to 7 characters" />
							<form:input path="name" required="true" placeholder="Name"
								title="name should not be empty" />
							<form:input path="password" pattern=".{4,15}" required="true"
								placeholder="Password"
								title="password should contains 4 to 15 characters" />
							<form:input type="tel" path="mobile" pattern="^\d{10}$"
								placeholder="Mobile" required="true"
								title="Please enter valid mobile number" />
							<form:input type="email" path="mail" placeholder="Email" />
							<form:input path="address" required="true" placeholder="Address" />
							<button type="submit" class="btn btn-default">Signup</button>
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