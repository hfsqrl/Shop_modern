<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/member/memberpage.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container">
			<div class="contents">
				<div>
					<h3>MY PAGE</h3>
					<div id="myOrder">
						<h3 id="wrap">${member.member_name} 님의 주문 처리 현황</h3>
						<ul class="line">
							<li style="margin-left: 0" class="myList">
								<a href="#">
									<strong>입금 전</strong>
									<br>
									<span>
										<span>0</span>
									</span>
								
								</a>
							</li>
							
							<li class="myList">
								<a href="#">
									<strong>배송준비중</strong>
									<br>
									<span>
										<span>0</span>
									</span>
								
								</a>
							</li>
							
														
							<li class="myList">
								<a href="#">
									<strong>배송중</strong>
									<br>
									<span>
										<span>0</span>
									</span>
								
								</a>
							</li>
							
														
							<li class="myList">
								<a href="#">
									<strong>배송완료</strong>
									<br>
									<span>
										<span>0</span>
									</span>
								
								</a>
							</li>
							
																					
							<li class="myList">
								<p>
								<a href="#">
									<strong>취소</strong>									
									<span>
										<span>0</span>
									</span>
								
								</a>
								</p>
								
								<p>									
								<a href="#">
									<strong>교환</strong>									
									<span>
										<span>0</span>
									</span>
								
								</a>
								</p>
								
								<p>													
								<a href="#">
									<strong>반품</strong>									
									<span>
										<span>0</span>
									</span>								
								</a>
								</p>
							</li>							
					 	</ul>
					</div>
					
					<div id="etc_wrap">
						
						<ul class="left">
							<h3 class="text">
								<a href="#" target="self">사용 가능 쿠폰</a>
							</h3>						
							<li class="line2">
								<a href="#">0</a>
							</li>
							
							
						</ul>
						
						<ul class="right">
							<h3 class="text">
								<a href="#">적립금</a>
							</h3>						
							<li class="line2">
								<a href="#">0</a>
							</li>
							
							
						</ul>
					</div>
				</div>
				
				<div class="myPage_btn">
					<ul>
						<li>
							<a href="../order/orderList?member_id=${member.member_id}">
							<span>ORDER TRACKING</span><br>
							주문 내역 조회								
							</a>
						</li>
					</ul>
					
					<ul>
						<li>
							<a href="./memberUpdate">
							<span>PROFILE</span><br>
							회원정보								
							</a>
						</li>
					</ul>
					
					<ul>
						<li>
							<a href="#">
							<span>ADDRESS</span><br>
							배송지 주소록 관리								
							</a>
						</li>
					</ul>
					
					<ul>
						<li>
							<a href="../cart/cartList?member_id=${member.member_id}">
							<span>CART</span><br>
							장바구니						
							</a>
						</li>
					</ul>
					
					<ul>
						<li>
							<a href="#">
							<span>BOARD</span><br>
							게시물 관리								
							</a>
						</li>
					</ul>
					
					<ul>
						<li>
							<a href="#">
							<span>MILEAGE</span><br>
							적립금								
							</a>
						</li>
					</ul>
					
					<ul>
						<li>
							<a href="#">
							<span>COUPON</span><br>
							쿠폰								
							</a>
						</li>
					</ul>
				</div>
				
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
	
</div> <!-- wrap -->
</body>
</html>