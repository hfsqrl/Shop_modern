<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			
				<form action="./memberSearchPw" method="get">
					<div class="member_findid">
						<div class="findid">
							<h4>비밀번호 재설정</h4>
							
							<fieldset>
								<ul>
								
									<li>
										<strong>ID</strong>
										<input type="text" style="border: none;" id="id" name="member_id">									
									</li>
									

									
									<li>
										<strong>EMAIL</strong>
										<input type="text" style="border: none;" id="email" name="member_email">									
									</li>
								</ul>
							</fieldset>
						</div>
							<div style="padding-top: 20px;">
								<input type="submit" class="searchBtn" value="FIND PW">
							</div>
					</div>
						
				</form>
						
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

</body>
<script type="text/javascript">

</script>
</html>