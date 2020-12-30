<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board}</title>
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
									<th style="width: 6%;">no.</th>
								<%-- <c:choose>
									<c:when test="${board ne notice}">
										<th style="width: 18%;">product</th>
									</c:when> --%>
									
									<th style="width: 80%;">title</th>
									<th style="width: 14%;">posted by</th>
									<%-- 
									<c:when test="${board ne notice}">
										<th style="width: 12%;">date</th>
									</c:when>
								</c:choose> --%>
								</tr>
							</thead>
							<tbody class="table-list">
								<c:forEach items="${list}" var="vo">
									<tr>
										<td>${vo.board_num}</td>
										<%-- <c:choose>
											<c:when test="${board ne notice}">
												<td style="width: 18%;"></td>
											</c:when>
										</c:choose> --%>
										<td><a href="${board}Select?board_num=${vo.board_num}">${vo.board_title}</td>
										<td>${vo.board_writer}</td>
										<%-- <c:choose>
											<c:when test="${board ne notice}">
												<td style="width: 12%;"></td>
											</c:when>
										</c:choose>	 --%>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="search">
						<div class="search-box">
							<select class="kind" id="kind" name="kind">
								<option>제목</option>
								<option>아이디</option>
								<option>내용</option>
							</select>
						</div>
						<div class="input-group">
							<input type="text" class="text" id="search" name="search">
							<a href="#" class="search-btn">SEARCH</a>
							<c:if test="${member.member_id eq 'admin'}">
								<div class="write-btn" id="btn-write">
									Write
								</div>
							</c:if>				
						</div>
					</div>
					<div class="page">
						<ol>
							<c:if test="${pager.before}">
								<li><a href="${board}List?page=${pager.startNum-2}" class="list" title="${pager.startNum-1}"><<</a></li>
							</c:if>
							  
							<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
								<li><a href="${board}List?page=${i-1}" class="list" title="${i}">${i}</a></li>
							</c:forEach>
							  
							<c:if test="${pager.after}">
								<li><a href="${board}List?page=${pager.lastNum}" class="list" title="${pager.lastNum+1}">>></a></li>
							</c:if>
						</ol>
					</div>
				</div>
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">

	$("#btn-write").click(function(){
		location.href="${pageContext.request.contextPath}/${board}/${board}Write"
	})

</script>

</body>
</html>