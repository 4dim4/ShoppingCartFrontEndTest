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
<!--/head-->
<body>

<%@ include file="/pages/header.jsp"%>


	<c:if test="${userClickedProductName==true}">
	<%@ include file="productDetails.jsp"%>
	</c:if>

	
	<div id="loginHere">
		<c:if test="${userClickedLoginHere==true || invalidCredentials==true}">

			<%@ include file="/pages/login.jsp"%>

		</c:if>
	</div>
	
	<div id="admin">

		<c:if test="${isAdmin==true}">

			<%@ include file="adminHome.jsp"%>

		</c:if>


	<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
				<%@ include file="adminHome.jsp"%>
				
				<%@ include file="category.jsp"%>
			</c:if>
		</div>
		
		<div id="products">
					<c:if test="${isAdminClickedProducts==true}">
						<%@ include file="adminHome.jsp"%>
						<%@ include file="product.jsp"%>
					</c:if>
				</div>

				<div id="suppliers">
					<c:if test="${isAdminClickedSuppliers==true}">
						<%@ include file="adminHome.jsp"%>
						<%@ include file="supplier.jsp"%>
					</c:if>
				</div>
				
			
			
		
		
		</div>
		
		
	<c:if test="${userClickedHome==true || userClickedCategoryName==true}">
	<%@ include file="homeDisplay.jsp"%>
	</c:if>
	
	
	
	<c:if test="${userClickedCartHere==true}">
	<%@ include file="cart.jsp"%>	
    </c:if>
    <c:if test="${userClickedCheckOut==true}">
	<%@ include file="checkout.jsp"%>	
    </c:if>
	<%@ include file="footer.jsp"%>

	



	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.scrollUp.min.js"></script>
	<script src="resources/js/price-range.js"></script>
	<script src="resources/js/jquery.prettyPhoto.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>
