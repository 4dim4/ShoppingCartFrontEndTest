<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Products</h2>
					
					 <c:forEach items="${category.products}" var="product">
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
								    <a href = "product/get/${product.id}">
									<img src="<c:url value = 'E:\Sutta\Work\shoppingcart\img\id${product.id}.jpg"' />" alt="" />
									</a>
									<h2>Rs.${product.price}</h2>
									<p>${product.name}</p>
									<a href="<c:url value='/cart/add/${product.id}' />" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								
							</div>
							
						</div>
					</div>
					</c:forEach>
					
					<br>
					<br>
					