<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container">
			<div class="contents" style="margin-bottom: 500px">
			
				<img src="/images/error/error.jpg" style="margin-top: 100px;">
				<br>
				<br>
				<input type="button" value="메인으로 가기" id="main" style="width: 120px; background-color: white;">

				<input type="button" value="로그인 페이지" id="login" style="width: 120px; background-color: white;">
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">
	$("#main").click(function(){
	
		location.href = "/";	
	});

	$("#login").click(function(){
		
		location.href = "../member/memberLogin";	
	});
	
</script>

</body>
</html>