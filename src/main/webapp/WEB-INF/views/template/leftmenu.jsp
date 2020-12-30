<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="menu_left">
	<div class="left">
		<div class="leftNav">
			<div class="navContent">
				<ul class="home">
					<a href="${pageContext.request.contextPath}/">
						<span class="goHome">home</span>
					</a>
				</ul>
				<ul class="membership">
					<li class="membership_li">
						<c:choose>
						  <c:when test="${empty member}">
							<a href="${pageContext.request.contextPath}/member/memberLogin"><span>LOGIN</span></a>
							<a href="${pageContext.request.contextPath}/member/memberJoin"><span>JOIN</span></a>
						  </c:when>
							
						  <c:otherwise>
						    <a href="${pageContext.request.contextPath}/member/memberLogout"><span>LOGOUT</span></a>
						    <a href="${pageContext.request.contextPath}/member/memberUpdate"><span>MODIFY</span></a>
							<a href="${pageContext.request.contextPath}/member/memberPage"><span>MY PAGE</span></a>
							<a href="#"><span>order</span></a>							
						  </c:otherwise>
						</c:choose>
					</li>
					<li class="membership_li">
						<a href="${pageContext.request.contextPath}/notice/noticeList"><span>NOTICE</span></a>
						<a href="#"><span>Q&A</span></a>
						<a href="#"><span>REVIEW</span></a>
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
				<ul class="cs-list">
					<li>
						<p class="cs-title">고객센터	1588-0000</p>
						<p>MON-FRI AM 11:00 – PM 6:00</p>
						<p>LUNCH TIME PM 13:00 – 14:00</p>
						<p>SAT.SUN.HOLIDAY OFF</p>
					</li>
					<li class="bank">
						<p class="cs-title">은행정보</p>
						<p>농협 317-0011-4079-11</p>
						<p>국민 242437-04-006967</p>
						<p>예금주 : (주) 모던이프</p>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>