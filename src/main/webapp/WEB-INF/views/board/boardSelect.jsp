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
								<li class="sel-title">
									<c:catch>
					  					<c:forEach begin="1" end="${vo.depth}">Re : </c:forEach>
					  				</c:catch>
									[ ${vo.board_title} ] ${vo.board_title2}
								</li>
								<li>posted by : ${vo.board_writer}</li>
							</ul>
						</div>
						<div class="board-contents">
							<div class="con-view">
								${vo.board_contents}
								<c:forEach items="${vo.files}" var="file">
									<p>첨부파일 : <a href="${board}FileDown?fnum=${file.fnum}">${file.oriName}</a></p> 
								</c:forEach>
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
							<c:if test="${not empty member and board ne 'notice'}">
								<div class="btn go-reply" id="go-reply" title="Reply">
									Reply
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

	$(".go-btn").click(function(){
		var board='${board}';
		var title = $(this).attr("title");

		$("#frm").attr("action", board+title);

		if(title=='Delete'){
			$("#frm").attr("method","post");
		}
		
		$("#frm").submit();
		
	});

	$("#go-reply").click(function() {
		location.href="../${board}/${board}Reply?board_num=${vo.board_num}"
	})
	
</script>

</body>
</html>