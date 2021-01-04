<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
<link href="../css/product/product.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container">
			<div class="contents">
				<div class="title">
					${product}
				</div>
				
				<div class="product_top">
					<div class="head_category">
						<ol>
							<li>
								<a href="/">Home</a>
							</li>
							
							<li>
								<span>></span>
								<a href="./${product}List">${product}</a>
							</li>
						</ol>
					</div>
				</div>
					
					<div class="product_list">
						<div class="main_product">
							<ul class="prdList">
							
								<c:forEach items="${list}" var="dto">
								<li>
									<div class="thumbnail">
										<a href="#">
											<img src="../images/product/${dto.item_image}">
										</a>
									</div>
									
									<div class="description">
										<ul>
											<li class="name" style="width: 150px;">
												<h5><a href="#">${dto.item_name}</a></h5>												
												<p class="icon_best">
													<img src="../images/product/best_ico.gif">
												</p>
												<br>
												<hr style="width: 300px;">
											</li>
											
											<li class="price" style="display: block;">												
												<h5>KRW ${dto.item_price}</h5>
											</li>
											
											<li class="review_count" style="display: block;">												
												<h6 style="width: 150px;">REVIEW : 0</h6>
											</li>
										</ul>
									</div>
								</li>
								</c:forEach>
																		
																																								
								
							</ul>
						</div>
					</div>
				
				
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

</body>
</html>