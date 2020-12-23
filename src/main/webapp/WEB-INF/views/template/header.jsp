<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="header"> <!-- #header -->
	<div class="right"> <!-- Nav_inner -->
		<div class="rightNav"> <!-- .header -->
			<div class="right_inner"> <!-- right -->
				<ul> <!-- menu -->
					<li>
						<a href="#">
							<img alt="" src="../images/index/cart.png">
						</a>
					</li>
					<li>
						<c:if test="${not empty member}">
							<a href="#">
								<img alt="" src="../images/index/member.png">
							</a>
						</c:if>
					</li>
					<span class="line"></span>
					<li>
						<a href="#">
							<img alt="" src="../images/index/lang.png">
						</a>
					</li>
				</ul>
			</div> <!-- right_inner -->
		</div> <!-- rightNav -->
	</div> <!-- right -->
</div> <!-- header -->