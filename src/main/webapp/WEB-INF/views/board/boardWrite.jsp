<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
						<p class="title" style="text-transform: uppercase;">${board}</p>
					</div>
					<form id="frm" action="./${board}Write" method="post" enctype="multipart/form-data">
						<%-- <input type="text" value="${vo.board_num}" name="board_num"> --%>
						<div class="title-box">
							
							<div class="form-group title-category">
								<c:choose>
									<c:when test="${board eq 'qna'}">
										<label for="sel1" class="title-lab">문의 선택</label>
										<select class="form-control sel-cate" id="sel1" name="board_title">
											<option>상품 문의</option>
											<option>배송 문의</option>
											<option>교환 문의</option>
											<option>반품 문의</option>
											<option>무통장 입금 문의</option>
											<option>배송전 취소/변경 문의</option>
											<option>해외배송 문의 / Shipping Q&A</option>
										</select>
										<label for="sel2" class="title-lab ti-cate">제목</label>
										<input type="text" name="board_title2" class="form-control title-input" id="usr">
									</c:when>
									<c:when test="${board eq 'review'}">
										<label for="sel1" class="title-lab">별점</label>
										<select class="form-control sel-cate point" id="sel1" name="board_title">
											<option>★</option>
											<option>★★</option>
											<option>★★★</option>
											<option>★★★★</option>
											<option>★★★★★</option>
										</select>
										<label for="sel2" class="title-lab">제목</label>
										<input type="text" name="board_title2" class="form-control title-input" id="usr">
									</c:when>
									<c:otherwise>
										<label for="sel1" class="title-lab">말머리 선택</label>
										<select class="form-control sel-cate heading" id="sel1" name="board_title">
											<option>필독!</option>
											<option>뉴스</option>
											<option>이벤트</option>
											<option>긴급 공지</option>
										</select>
										<label for="sel2" class="title-lab ti-head">제목</label>
										<input type="text" name="board_title2" class="form-control title-input" id="usr">
									</c:otherwise>
								</c:choose>
								
							</div>
						</div>
						<div class="form-group writer-box">
							<input type="hidden" class="form-control writer" id="writer" name="board_writer" value="${member.member_id}">
						</div>					
						
						<div class="write-contents">
							<textarea id="summernote" class="contents-area" name="board_contents"></textarea>
							<c:import url="./boardWriteAddFiles.jsp"></c:import>
							<div class="go-btns">
								<div class="btn go-list">LIST</div>
								<div class="go-write"><button type="submit" class="btn btn-link" id="btn">WRITE</button></div>
							</div>
						</div>
					</form>
				</div>
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">

	$("#summernote").summernote({
		height: 500,
		lang: 'ko-KR',
		placeholder: '내용을 작성하세요.',
		focus: true,
		callbacks: {
			onImageUpload:function(files, editor, welEditable){
				var formData = new FormData();	    
				formData.append('file', files[0]); 
				 
				$.ajax({
					data: formData,
				    type: "POST",
				    url: 'summernote',
				    cache: false,
				    contentType: false,
				    enctype: 'multipart/form-data',
				    processData: false,
					success:function(data){
						data = data.trim();
						$("#summernote").summernote('editor.insertImage', data);
					}
				 })
			 },
			 
			 onMediaDelete:function(files){
				 var fileName = $(files[0]).attr("src");
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
				
				$.ajax({
					type:"POST",
					url : "./summernoteDelete",
					data: {
						file:fileName
					},
					success:function(data){
						alert(data);
					}
				
				}) 
			 }
		 }
	});

	var emptyCheckResult = true;
	$("#btn").click(function(){
		emptyCheck();
		if(emptyCheckResult){
			$("#frm").submit();
		}
	});

	function emptyCheck(){
		emptyCheckResult=true;
		$(".title-input").each(function(){
			var data = $(this).val();
			if(data==''){
				emptyCheckResult=false;
				var title = '제목';
				alert(title+"을 입력하세요");
			}
		});

		/* $("#.contents-area").each(function(){
			var contents = $(this).val();
			if(contents=='') {
				emptyCheckResult=false;
				var area = '내용';
				alert(area+"을 입력하세요");
			}
		}); */
	}

	$(".go-list").click(function() {
		location.href="${pageContext.request.contextPath}/${board}/${board}List"
	})


</script>

</body>
</html>