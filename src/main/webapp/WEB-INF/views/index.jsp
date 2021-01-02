<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<c:import url="./template/bootstrap.jsp"></c:import>
<link href="./css/common/default.css" rel="stylesheet">
<link href="./css/index.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="./template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="./template/header.jsp"></c:import>
		<div class="container">
			<div class="contents">
				<div class="inner_con"> <!-- i-cont -->
					<div class="swipe_images"> <!-- i-main -->
						<div class="swipe_wrap">
							<div class="swipe_slide">
								
								<div class="slideshow-container">
								
								<div class="mySlides fade">
								  <img src="./images/index/swipe1.jpg" style="width:100%" class="slides">
								</div>
								
								<div class="mySlides fade">
								  <img src="./images/index/swipe2.jpg" style="width:100%" class="slides">
								</div>
								
								<div class="mySlides fade">
								  <img src="./images/index/swipe3.jpg" style="width:100%" class="slides">
								</div>
								
								<div class="mySlides fade">
								  <img src="./images/index/swipe4.jpg" style="width:100%" class="slides">
								</div>
								
								<div class="mySlides fade">
								  <img src="./images/index/swipe5.jpg" style="width:100%" class="slides">
								</div>
								
								<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
								<a class="next" onclick="plusSlides(1)">&#10095;</a>
								
								</div>
								<br>
								
								<div style="text-align:center">
								  <span class="dot" onclick="currentSlide(1)"></span> 
								  <span class="dot" onclick="currentSlide(2)"></span> 
								  <span class="dot" onclick="currentSlide(3)"></span> 
								  <span class="dot" onclick="currentSlide(4)"></span> 
								  <span class="dot" onclick="currentSlide(5)"></span> 
								</div>

							</div>
						</div>
					</div>
					<div class="main-con"> <!-- main-cont -->
						<a href="#" class="image_box">
							<img src="./images/index/main1.jpg">
							<p class="inner_box">
								<span class="p_title">Sample Sale</span>
							</p>
						</a>
						<a href="#" class="image_box">
							<img src="./images/index/main2.jpg">
							<p class="inner_box">
								<span class="p_title">Delivery</span>
							</p>
						</a>
						<a href="#" class="image_box">
							<img src="./images/index/main3.jpg">
							<p class="inner_box">
								<span class="p_title">Season Off</span>
							</p>
						</a>
						<a href="#" class="image_box">
							<img src="./images/index/main4.jpg">
							<p class="inner_box">
								<span class="p_title">Product</span>
							</p>
						</a>
					</div>
				</div>
			</div> <!-- contents -->
			<c:import url="./template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
	
</div> <!-- wrap -->

<script type="text/javascript">
	var slideIndex = 1;
	showSlides(slideIndex);
	
	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}
	
	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}
	
	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  if (n > slides.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";  
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";  
	  dots[slideIndex-1].className += "active";
	}
</script>

</body>
</html>