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
<style type="text/css">
	.pwCheck0 {
		color: red;
	}
	
	.pwCheckB{
		color: red;
	}
	
	.pwCheck1 {
		color: blue;
	}
	
	.pwCheckA{
		color: blue;
	}
	
</style>
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container">
			<div class="contents">
							
				<form action="./memberSearchPwView" method="post" id="frm">
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
										<input type="hidden" name="member_id" value="${vo.member_id}">										
										<input type="password" value="${vo.member_pw}" style="border: none;">															
									</li>
									
									<li>
										<strong>PW</strong>
										<input type="password" name="member_pw" style="border: none;" id="member_pw">																
									</li>
									
									<li>
										<strong>PW CK</strong>
										<input type="password" name="member_pw2" style="border: none;" id="member_pw2">																		
									</li>									
								</ul>
							</fieldset>
							<div id="pwResult" style="text-align: left;"></div>
							<div id="pwResult2" style="text-align: left;"></div>
						</div>
										
							<div style="padding-top: 20px;">
								<input type="button" class="searchBtn" value="RESET PW" id="resPw">																
							</div>
					</div>
				</form>
												
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">
	var pwCheck=false;
	var pwExpCheck=false;

	var regexPw = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;// 비밀번호 정규식 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
	
	$("#resPw").click(function(){
		
		if(pwCheck && pwExpCheck){
			$("#frm").submit();
			alert("비밀번호 재설정이 완료되었습니다. 로그인창으로 이동합니다.")
			
		}else{
			alert("비밀번호 일치 여부, 공백 및 입력 형식을 확인해주세요.")
		}
	});

	$("#member_pw2").blur(function() {
		var pw = $("#member_pw").val();
		var pw2 = $(this).val();
		pwCheck=false;
		
		if(pw2==''){
			$("#pwResult").html("Password를 입력하세요");
			$("#pwResult").removeClass("pwCheckA").addClass("pwCheckB");
		} else if(pw == pw2){
			$("#pwResult").html("Password가 일치 합니다");
			$("#pwResult").removeClass("pwCheckB").addClass("pwCheckA");
			pwCheck=true;
		}else {
			$("#pwResult").html("Password가 일치 하지 않습니다");
			$("#pwResult").removeClass("pwCheckA").addClass("pwCheckB");
		}
	});

	$("#member_pw2").blur(function() {
		pwExpCheck=false;
		if(!regexPw.test($("input[id='member_pw2']").val())) {
			pwExpCheck=false;
			$("#pwResult2").html("형식에 맞지 않는 비밀번호입니다.");
			$("#pwResult2").removeClass("pwCheck1").addClass("pwCheck0");
	    
		}else{
			pwExpCheck=true;
			$("#pwResult2").html("사용할 수 있는 형식의 비밀번호입니다.");
			$("#pwResult2").removeClass("pwCheck0").addClass("pwCheck1");
		}
	});
	

	
</script>

</body>
</html>