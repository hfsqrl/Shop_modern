<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
<link href="../css/board/boardSelect.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container con-sel">
			<div class="contents cont-sel">
			
				<div class="select-box">
					<div class="select-wrap">
						<div class="board-top">
							<ul>
								<li class="sel-title">${vo.board_title}</li>
								<li>posted by : ${vo.board_writer}</li>
							</ul>
						</div>
						<div class="board-contents">
							<div class="con-view">
								${vo.board_contents}
							</div>
						</div>
						<div class="re-list">
							<div class="btn" id="golist">
								<a href="">list</a>
							</div>
						</div>
					</div>
					<div class="reply-box">
						<div class="comment-box">
						
						</div>
						<div>
						</div>
					</div>
				</div>
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

</body>
</html>