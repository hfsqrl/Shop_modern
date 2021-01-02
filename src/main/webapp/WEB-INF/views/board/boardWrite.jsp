<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board} write Page</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
<link href="../css/board/boardWrite.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container con-wr">
			<div class="contents cont-wr">
				
				<div class="write-box">
					<div class="write-head">
						<p class="title">Q&A</p>
					</div>
					<div class="write-contents">
						<textarea id="summernote" class="contents-area"></textarea>
						<c:import url="./boardWriteAddFiles.jsp"></c:import>
						<div class="go-btns">
							<div class="btn go-list">LIST</div>
							<div class="btn go-write">WRITE</div>
						</div>
					</div>
					
				</div>
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">

	$("#summernote").summernote({
		height: 500,
		lang: 'ko-KR'
	});

</script>

</body>
</html>