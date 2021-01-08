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
							Q&A
						</p>
					</div>
					<div class="board_body">
						<table class="table table-bordered board_table">
							<thead class="table-head">
								<tr>
									<th style="width: 6%;">no.</th>
									<th style="width: 13%;">product</th>
									<th style="width: auto;">title</th>
									<th style="width: 14%;">posted by</th>
									<th style="width: 12%;">date</th>
								</tr>
							</thead>
							<tbody class="table-list">
								<c:forEach items="${list}" var="vo">
									<tr>
										<td>${vo.board_num}</td>
										<td><a href="./getOneProduct?item_num=${dto.item_num}">${dto.item_name}</a></td>
										<td><a href="${board}Select?board_num=${vo.board_num}">${vo.board_title}</td>
										<td>${vo.board_writer}</td>
										<td>${vo.regDate}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<form action="./${board}List" id="search-frm">
						<input type="hidden" name="curPage" id="curPage" value="1">
						
						<div class="input-group search">
							<div class="search-kind">
								<select class="form-control kind" id="kind" name="kind">
									<option value="opt-all" id="kind-all">전체</option>
									<option value="opt-title" id="kind-title">제목</option>
									<option value="opt-id" id="kind-id">아이디</option>
									<option value="opt-cont" id="kind-cont">내용</option>
								</select>
							</div>
							<div class="search-box">
								<input type="text" class="form-control text" id="search" name="search">
								<div class="search-btn">SEARCH</div>
							</div>
							<c:if test="${not empty member or member.member_id eq 'admin'}">
								<div class="form-item write-btn" id="btn-write">
									Write
								</div>
							</c:if>				
						</div>
					</form>
					<div class="page">
						<ol>
							<c:if test="${pager.before}">
								<li><a href="#" class="list" title="${pager.startNum-1}"><<</a></li>
							</c:if>
							  
							<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
								<li><a href="#" class="list" title="${i}">${i}</a></li>
							</c:forEach>
							  
							<c:if test="${pager.after}">
								<li><a href="#" class="list" title="${pager.lastNum+1}">>></a></li>
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
	$("#search").val('${param.search}');

	var kind = '${param.kind}'; 
	
 	if(kind != '') {
		$("#kind").val(kind);
	} else {
		$("#kind").val("opt-all");
	}

 	var search-frm = $("#search-frm");

	$("#search-btn").on("click", function(){
		var s_search = false;
		if(!search_frm.find("input[name='search']").val()) {
			alert("키워드를 입력하세요");
		} else {
			s_search = true;
			search-frm.submit();
		}
	});

	$("#btn-write").click(function(){
		location.href="${pageContext.request.contextPath}/${board}/${board}Write"
	})
	
	$(".list").click(function() {
		var curPage = ($(this).attr("title"))
		$("#curPage").val(curPage)
		$("#frm").submit()
	})

</script>

</body>
</html>