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
<link href="../css/membersearch.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container">
			<div class="contents">
				
				<form:form modelAttribute="memberUserVO" id="frm" method="post">
					<div class="member_findid">
						<div class="findid">
							<h4>비밀번호 재설정</h4>
							<h5>
								형식에 맞는 비밀번호로 재설정해주세요.
							</h5>	
							<fieldset>
								<ul>
									<li>
										<strong>AL PW</strong>
										<form:input type="hidden"  path="member_id" value="${vo.member_id}"/>										
										<input type="password" value="${vo.member_pw}">															
									</li>
									
									<li>
										<strong>PW</strong>
										<form:input type="password" path="member_pw2" style="border: none;" id="member_pw2"/>																			
									</li>
									
									<li>
										<strong>PW CK</strong>
										<form:input type="password" path="member_pw" style="border: none;" id="member_pw2"/>
										<form:errors path="member_pw" cssClass="error"></form:errors>																			
									</li>
								</ul>
							</fieldset>
						</div>
							<div style="padding-top: 20px;">
								<input type="button" class="searchBtn" value="RESET PW" id="resPw">																
							</div>
					</div>
				</form:form>
				
			
				
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">
	$("#resPw").click(function(){
		$("#frm").submit();
	});

	

	
</script>

</body>
</html>