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
	<div class="menu_left">
		<div class="left">
			<div class="leftNav">
				<div class="navContent">
					<ul class="home">
						<a href="#">
							<span class="goHome">home</span>
						</a>
					</ul>
					<ul class="membership">
						<li class="membership_li">
							<a href="#"><span>login</span></a>
							<a href="#"><span>join</span></a>
							<a href="#"><span>my page</span></a>
							<a href="#"><span>order</span></a>
						</li>
						<li class="membership_li">
							<a href="#"><span>notice</span></a>
							<a href="#"><span>q&a</span></a>
							<a href="#"><span>review</span></a>
						</li>
					</ul>
					<ul class="category">
						<li>
							<a href="#"><span>New Arrival</span></a>
						</li>
						<li>
							<a href="#"><span>BEST 30</span></a>
						</li>
						<li>  </li>
						<li>
							<a href="#"><span>Outer</span></a>
						</li>
						<li>
							<a href="#"><span>Top</span></a>
						</li>
						<li>
							<a href="#"><span>Shirts</span></a>
						</li>
						<li>
							<a href="#"><span>Pants</span></a>
						</li>
						<li>
							<a href="#"><span>Suit</span></a>
						</li>
						<li>
							<a href="#"><span>Bag/Shoes</span></a>
						</li>
						<li>
							<a href="#"><span>Acc</span></a>
						</li>
						<li>
							<a href="#"><span>Sale</span></a>
						</li>
						<li>  </li>
						<li>
							<a href="#"><span>당일발송</span></a>
						</li>
						<li>
							<a href="#"><span>MADE BY OURSELVES</span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="main_right"> <!-- container_wrap -->
		<div id="header"> <!-- #header -->
			<div class="right"> <!-- Nav_inner -->
				<div class="rightNav"> <!-- .header -->
					<div class="right_inner"> <!-- right -->
						<ul> <!-- menu -->
							<li>
								<a href="#">
									<img alt="" src="./images/index/cart.png">
								</a>
							</li>
							<li>
								<a href="#">
									<img alt="" src="./images/index/member.png">
								</a>
							</li>
							<span class="line">  </span>
							<li>
								<a href="#">
									<img alt="" src="./images/index/lang.png">
								</a>
							</li>
						</ul>
					</div> <!-- right_inner -->
				</div> <!-- rightNav -->
			</div> <!-- right -->
		</div> <!-- header -->
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
								<span class="p_title">Sesson Off</span>
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
			<div id="footer">
				<div class="footer">
					<ul>
						<div class="f_box box1">
							<p class="cs">고객센터</p>
							<p class="cs_num">1588-0000</p>
							<p>Mon-Fri AM 11:00 – PM 6:00</p>
							<p>Lunch time PM 13:00 – 14:00</p>
							<p>Sat.Sun.Holiday OFF</p>
							<p class="cs bank-info">은행정보</p>
							<p>농협 000-0202-0123-11</p>
							<p>국민 123456-30-876890</p>
							<p>예금주 : (주)SIST</p>
						</div>
						<div class="f_box box2">
							<p class="cs">주식회사 모던이프</p>
							<p>대표이사 : 노경한 | 이메일 : asdf@gmail.com</p>
							<p>서울특별시 마포구 월드컵북로21 풍성빌딩 2,3,4층</p>
							<p>사업자등록번호 : 8858800485 <a href="#">[사업자정보확인]</a> | 통신판매업신고번호 : 2017-수원팔달-0059호</p>
							<p class="shopinfo">
								<a href="#">회사소개</a>
								<a href="#">이용약관</a>
								<a href="#">이용안내</a>
								<a href="#">개인정보처리방침</a>
							</p>
						</div>
					</ul>
				</div>
			</div>
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
	  dots[slideIndex-1].className += " active";
	}
</script>

</body>
</html>