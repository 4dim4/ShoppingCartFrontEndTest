<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section id="slider">
	<!--slider-->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="slider-carousel" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						
						<li data-target="#slider-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<h2>Welcome to E-SHOPPER</h2>
								
								<button type="button" class="btn btn-default get">Shop Now</button>
							</div>
							<div class="col-sm-6">
								<img src="resources/images/home/girl1.jpg"
									class="girl img-responsive" alt="" /> 
							</div>
						</div>
						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<h2>Welcome to E-SHOPPER</h2>
								
								<button type="button" class="btn btn-default get">Shop Now</button>
							</div>
							<div class="col-sm-6">
								<img src="resources/images/home/girl2.jpg"
									class="girl img-responsive" alt="" />
							</div>
						</div>

						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<<h2>Welcome to E-SHOPPER</h2>
								
								<button type="button" class="btn btn-default get">Shop Now</button>
							</div>
							<div class="col-sm-6">
								<img src="resources/images/home/girl3.jpg"
									class="girl img-responsive" alt="" /> 
							</div>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a href="#slider-carousel"
						class="right control-carousel hidden-xs" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>

			</div>
		</div>
	</div>
</section>
<!--/slider-->

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="left-sidebar">
					<h2>Category</h2>
					<div class="panel-group category-products" id="accordian">
						<!--category-productsr-->
						
						
							
					 	<c:forEach items="${categoryList}" var="category">
							<div class="panel panel-default">
							
							
								<div class="panel-heading">
									<h4 class="panel-title">
									
										<a data-parent="#accordian" href="<c:url value='displayProducts/${category.name}' />" >${category.name}</a>
									</h4>
								</div>
							
								
							</div>
							
							
						</c:forEach>
					

						
						
						<!--My working categories-->
						<!--  
					 	<c:forEach items="${categoryList}" var="category">
							<div class="panel panel-default">
							
							
								<div class="panel-heading">
									<h4 class="panel-title">
									
										<a data-toggle="collapse" data-parent="#accordian" href="#test${category.name}">${category.name}</a>
									</h4>
								</div>
								<div id="test${category.name}" class="panel-collapse collapse">
								<div class="panel-body">
								
									<ul>
									  <c:forEach items="${category.products}" var="product">
										<li><a href="#">${product.name} </a></li>
										</c:forEach>
										
									</ul>
								</div>
							</div>
								
							</div>
							
							
						</c:forEach>
						-->
							<!--/My working categories--> 
						
						
								
					</div>
					<!--/category-products-->

					
					
				

				</div>
			</div>

	<div class="col-sm-9 padding-right">
	<c:if test="${empty userClickedCategoryName}">			
	<%@ include file="featuredItems.jsp"%>
	</c:if>			
	<c:if test="${userClickedCategoryName==true}">
	<%@ include file="displayProducts.jsp"%>
	
	</c:if>
	
			</div>  
		</div>
	</div>
</section>
