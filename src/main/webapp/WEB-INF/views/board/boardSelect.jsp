<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board} select</title>
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
						<form action="" id="frm">
							<input type="hidden" value="${vo.board_num}" name="board_num">
							<%-- <h3>${board} num : ${vo.board_num}</h3> --%>
						</form>
						
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
							<div class="btn" id="go-list" title="list">
								list
							</div>
							<c:if test="${member.member_id eq vo.board_writer or member.member_id eq 'admin'}">
								<div class="btn go-btn" id="go-delete" title="Delete">
									delete
								</div>
								<div class="btn go-btn" id="go-modify" title="Modify">
									modify
								</div>
							</c:if>
						</div>
					</div>
				</div>
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">

	$("#go-list").click(function() {
		location.href="${pageContext.request.contextPath}/${board}/${board}List"
	})
	
	/* var board = '${board}'
			
	$("#go-delete").click(function() {
		var num = $("#go-delete").attr("title")
		
		location.href="./${board}Delete?num="+num
	})
	
	$("#go-modify").click(function() {
		location.href="./${board}Modify?board_num=${vo.board_num}"
	}) */

	$(".go-btn").click(function(){
		var board='${board}';
		var title = $(this).attr("title");

		$("#frm").attr("action", board+title);

		if(title=='Delete'){
			$("#frm").attr("method","post");
		}
		
		$("#frm").submit();
		
	});
	
</script>

</body>
</html>