<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
<link href="../css/member/membersearch.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container">
			<div class="contents">
				<form action="./memberSearchId" method="post" id="frm">
					<div class="member_findid">
						<div class="findid">
							<h4>아이디 찾기</h4>
							<h5>
								이메일과 휴대전화로 아이디 찾기가 가능합니다.
								<br>
								찾기가 어려우시면 고객센터로 문의주세요.
							</h5>	
							<fieldset>
								<ul>
									<li>
										<strong>NAME</strong>
										<input type="text" style="border: none;" name="member_name">																	
									</li>
									
									<li>
										<strong>PHONE</strong>
										<input type="text" style="border: none;" name="member_phone">									
									</li>
									
									<li>
										<strong>EMAIL</strong>
										<input type="text" style="border: none;" name="member_email">									
									</li>
								</ul>
							</fieldset>
						</div>
							<div style="padding-top: 20px;">
								<input type="button" class="searchBtn" value="FIND ID" id="searchBtn">
							</div>
					</div>
						
				</form>
								
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">

	$("#searchBtn").click(function(){
			$("#frm").submit();
		})
	
</script>

</body>
</html>