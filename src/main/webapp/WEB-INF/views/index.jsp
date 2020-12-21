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
				<div class="inner_con">
					<div class="swipe_images"> <!-- i-main -->
						<div class="swipe_wrap">
							<div class="swipe_slide">
								<!-- <a href="#">
									<img alt="" src="./images/index/swipe1.jpg">
								</a> -->
							</div>
						</div>
					</div>
					<div class="main-con">
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			
		</div>
	</div> <!-- main_right -->
	
</div> <!-- wrap -->
</body>
</html>