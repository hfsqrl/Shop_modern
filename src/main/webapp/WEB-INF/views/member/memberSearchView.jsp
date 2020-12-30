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
				
					<div class="member_findid">
						<div class="findid">
							<h4>아이디 찾기</h4>
							<h5>
								아이디 찾기가 완료되었습니다.
								<br>
								입력하신 정보로 가입된 아이디를 찾았습니다.
							</h5>	
							<fieldset>
								<ul>
									<li>
										<strong>NAME</strong>
										<input type="text" style="border: none;" value="${search.member_name}">									
									</li>
									
									<li>
										<strong>PHONE</strong>
										<input type="text" style="border: none;" name="member_phone" value="${search.member_phone}">									
									</li>
									
									<li>
										<strong>ID</strong>
										<input type="text" style="border: none;" name="member_email" value="${search.member_id}">									
									</li>
								</ul>
							</fieldset>
						</div>
							<div style="padding-top: 20px;">
								<input type="button" class="searchBtn" value="LOGIN" id="golog">																
							</div>
							
							<div style="padding-top: 10px;">
								<input type="button" class="searchBtn" value="FIND PW" id="gopw">
							</div>
					</div>
						
			
				
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">

	$("#golog").click(function(){
		location.href = "./memberLogin";
		
		});
		
	$("#gopw").click(function(){
		location.href = "./memberSearchPw";
		
		});
	

	
</script>

</body>
</html>