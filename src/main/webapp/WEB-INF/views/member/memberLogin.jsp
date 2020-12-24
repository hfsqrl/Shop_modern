<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right">
		<c:import url="../template/header.jsp"></c:import>
		
		<div class="container">
				<div class="text-center">
				<h3 style="margin-top: 60px;">회원로그인</h3>
				<form action="./memberLogin" method="post" class="form-horizontal" style="padding: 20px;">
				<div>
					<input type="text" name="member_id" value="${cookie.remember.value}" class="login2" placeholder="아이디" style="width:430px; height:42px;">
				</div>	
				<br>	
				<div>
					<input type="password" name="member_pw" class="login2" width="430" height="42" placeholder="비밀번호" style="width:430px; height:42px;">
				</div>
				<br>
				
				<div>
				<div class="checkbox" style="text-align: center;">
				 	 <label><input type="checkbox" name="remember">아이디저장</label>
				 	 <div class="idpw">
				 		<a href="#">아이디 찾기</a> 
				 		ㅣ
				 		<a href="#">비밀번호 찾기</a>
				 	</div>
				</div>
				</div>
					
				<button type="submit" style="text-align:center; width:430px; height:58px;" id="btnLog">로그인</button>
				<div></div><br>
				<button type="button" style="text-align:center; width:430px; height:58px;" id="btnJoin">회원가입</button>
				</form>
			</div>
			<c:import url="../template/footer.jsp"></c:import>
		</div>
	</div>
</div>

</body>
<script type="text/javascript">
	$("#btnJoin").click(function(){
		location.href = "./memberJoin";
		});
</script>
</html>