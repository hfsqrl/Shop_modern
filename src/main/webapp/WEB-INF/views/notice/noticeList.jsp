<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
<link href="../css/board/boardList.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container">
			<div class="contents cont-notice">
			
				<div class="board_shape">
					<div class="board_name">
						<p class="name_text">
							notice
						</p>
					</div>
					<div class="board_body">
						<table class="table table-bordered board_table">
							<thead class="table-head">
								<tr>
									<th style="width: 60px;">no.</th>
									<th style="width: 824px;">title</th>
									<th style="width: 140px">posted by</th>
								</tr>
							</thead>
							<tbody class="table-list">
								<c:forEach items="${list}" var="vo">
									<tr>
										<td>${vo.board_num}</td>
										<td>${vo.board_title}</td>
										<td>${vo.board_writer}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="search">
						<input type="text">
					</div>
				</div>
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

</body>
</html>