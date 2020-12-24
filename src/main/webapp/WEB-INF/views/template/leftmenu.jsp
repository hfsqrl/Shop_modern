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
							<a href="${pageContext.request.contextPath}/member/memberLogin"><span>login</span></a>
							<a href="${pageContext.request.contextPath}/member/memberJoin"><span>join</span></a>
						  </c:when>
							
						  <c:otherwise>
						    <a href="${pageContext.request.contextPath}/member/memberLogout"><span>logout</span></a>
							<a href="${pageContext.request.contextPath}/member/memberPage"><span>my page</span></a>
							<a href="#"><span>order</span></a>							
						  </c:otherwise>
						</c:choose>
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