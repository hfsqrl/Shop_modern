<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<style type="text/css">
	.error{
		color: red;
	}
</style>
</head>
<body>
	
	<h1>member join</h1>	
	<div class="container">
	<div style="padding: 0;">
		<form:form modelAttribute="memberVO" id="frm" class="form-horizontal">
		
			<h3 style="text-align: center;">Join</h3>
			  <hr>
			 
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="id">아이디</label>
			    <div class="col-sm-4"> 
			     <form:input path="member_id" class="form-control input" placeholder="숫자와 문자 포함   6~12자리" id="id"/>
      			 <form:errors path="member_id" cssClass="error"></form:errors>
			    </div>
			    <br>
			    <hr>
			 </div>
			
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="pw">비밀번호</label>
			    <div class="col-sm-4">
			       <input type="password" id="pw" name="member_pw" class="form-control empty" placeholder="특수문자 , 문자 , 숫자 포함  8~15자리 이내의 암호">
			    </div>
			     <br>
			     <hr>
			 </div>
		
			  <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="pw2">비밀번호 확인</label>
			    <div class="col-sm-4">
			     <form:input type="password" id="pw2" path="member_pw2" class="form-control input" placeholder="특수문자 , 문자 , 숫자 포함  8~15자리 이내의 암호" />
      			 <form:errors path="member_pw2" cssClass="error"></form:errors>
			    </div>
			     <br>
			     <hr>
			 </div>
			
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="name">비밀번호 확인 질문</label>
			    <div class="col-sm-4">
				   <form:select path="member_ask" class="form-control input">
  					<optgroup label="질문을 선택해주세요">
    				<option value="기억에 남는 추억의 장소는?">기억에 남는 추억의 장소는?</option>
    				<option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
    				<option value="자신의 보물 1호는?">자신의 보물 1호는?</option>
    				<option value="가장 기억에 남는 선생님 성함은?">가장 기억에 남는 선생님 성함은?</option>
  					</optgroup>
					</form:select>			   
      			 <form:errors path="member_ask" cssClass="error"></form:errors>
			    </div>
			     <br>
			     <hr>
			 </div>
		
			  <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="answer">비밀번호 확인 답변</label>
			    <div class="col-sm-4">				 
			     <form:input path="member_answer" class="form-control"/>
      			 <form:errors path="member_answer" cssClass="error"></form:errors>
			    </div>
			     <br>
			     <hr>
			 </div>
			 
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="name">이름</label>
			    <div class="col-sm-4">				   
			     <form:input path="member_name" class="form-control" id="name"/>
      			 <form:errors path="member_name" cssClass="error"></form:errors>
			    </div>
			    <br>
			     <hr>
			 </div>
			
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="member_address">주소</label>
			    <div class="col-sm-4">
			    	<input type="button" id="address_btn" value="도로명 주소">				    
			     <form:input path="member_address" class="form-control empty"/>
      			 <form:errors path="member_address" cssClass="error"></form:errors>
			    </div>
			    <br>
			     <hr>
			 </div>
			
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="birth">생년월일</label>
			    <div class="col-sm-4">
			       <input type="date" id="date" name="member_birth" class="form-control empty">
		
			    </div>
			     <br>
			     <hr>
			 </div>
			 
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="phone">휴대전화 </label>
			    <div class="col-sm-4">			       
			       <form:input id="phone" path="member_phone" class="form-control empty" placeholder="ex) 010-xxxx-xxxx"/>			      		
      			 <form:errors path="member_phone" cssClass="error"></form:errors>
			    </div>
			     <br>
			     <hr>
			 </div>
			 
			  <div class="col-sm-12 join_input">
			     <label class="col-sm-2 join_text" for="sms_agg">SMS 수신여부</label>
				   <div class="col-sm-4">
					<label>
					<input type="checkbox" value=1 name="member_sms_agg"> 동의함</label>
	  				
				   </div>
				   <br>
			     <hr> 
			  </div>
			  
		
			  <div class="col-sm-12 join_input">
			     <label class="col-sm-2 join_text" for="email">이메일</label>
				   <div class="col-sm-4">					
					<form:input id="email" path="member_email" class="form-control" placeholder="ex) aaa@email.com"/>				    
      			 <form:errors path="member_email" cssClass="error"></form:errors>
				    </div>
				  <br>
			     <hr>
			  </div>
			 
			  <div class="col-sm-12 join_input">
			     <label class="col-sm-2 join_text" for="email_agg">이메일 수신여부</label>
				   <div class="col-sm-4">
					<label><input type="checkbox" value=1 name="member_email_agg"> 동의함</label><br>
	  				
				   </div>
				    <br>
			     <hr>  				
			  </div>
			  
			  <h3 style="text-align: center;">추가정보</h3>
			  <hr>
			
			<div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="name">지역</label>
			    <div class="col-sm-4">
				   <select name="member_region" class="form-control empty">
  					<optgroup label="선택">
    				<option value="경기">경기</option>
    				<option value="서울">서울</option>
    				<option value="인천">인천</option>
    				<option value="강원">강원</option>
  					</optgroup>
					</select>			     
			    </div>
			    
			 </div>
			  <br>
			  <hr>
			  
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="refund_info">환불 계좌 정보</label>
			     <div class="col-sm-4">
			       
			       
				   <h5>> 예금주</h5><input type="text" id="refund_name" name="member_refund_name" class="form-control empty" >  
			       <div class="emptyResult"></div>
			   		
			   		
			       <h5>> 은행명</h5>
			    
				  	 <select name="member_refund_bank" class="form-control empty">
  						<optgroup label="은행선택">
    					<option value="산업은행">산업은행</option>
    					<option value="기업은행">기업은행</option>
    					<option value="국민은행">국민은행</option>
    					<option value="하나(외환)은행">하나(외환)은행</option>
  						</optgroup>
					  </select>
			      	 <div class="emptyResult"></div>
			    	
			    
			    <div>
				   <h5>> 계좌번호</h5>
				   <input type="text" id="refund_name" name="member_refund_account" class="form-control empty" >  
			       <div class="emptyResult"></div>
			 	</div>
			 	<br>  
			    
				</div> 
			 </div>
			 
			<h3 style="text-align: center;">이용약관 동의</h3>
			 <hr>
			
			<div>
				<div> 
					<h5>이용 약관에 동의하십니까?</h5>
					<label><input type="checkbox" value=1 name="member_clause_agg"> 동의함</label>
				</div>
				<hr>
				<div>
					<h5>개인정보 수집 및 이용에 동의하십니까?</h5>
					<label><input type="checkbox" value=1 name="member_pi_agg"> 동의함</label>
				</div>
			
			</div>
					
								
         		</form:form>
			</div>
					
			</div>
			<div style="text-align: center;">
			<input type="button" id="joinBtn" value="가입하기" class="checkButt" style= "width:110px; height:42px;">
			</div>
			

	
</body>
<script type="text/javascript">

	//유효성 검사 정규식
	var passRule = /^[A-Za-z0-9]{6,12}$/;//아이디 정규식 숫자와 문자 포함 형태의 6~12자리 이내의 아이디 정규식
	var regexPw = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;// 비밀번호 정규식 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
	var regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;//핸드폰 번호 정규식
	//유효성 검사 정규식
	
	$("#joinBtn").click(function() {
		
		if(idExpCheck && pwExpCheck && phoneExpCheck && emailExpCheck){
			$("#frm").submit();
		}else {
			$("#frm").submit();
			alert("필수 항목을 입력 및 입력 형식을 지켜주세요.")
		}
	});
	
	//회원가입 유효성 검사
		var idExpCheck=true;
		var idExpCheck=false;
		var pwExpCheck=false;
		var phoneExpCheck=false;
		var emailExpCheck=false;
	

	$("#id").blur(function() {
		idExpCheck=false;
		if(!passRule.test($("input[id='id']").val())) {
			idExpCheck=false;
		 	alert("형식에 맞지않는 아이디입니다.")
	    
		}else{
			idExpCheck=true;
			alert("사용할 수 있는 아이디 형식입니다.")
		}
		
	});
	
	$("#pw2").blur(function() {
		pwExpCheck=false;
		if(!regexPw.test($("input[id='pw2']").val())) {
			pwExpCheck=false;
		 	alert("형식에 맞지않는 비밀번호입니다.")
	    
		}else{
			pwExpCheck=true;
			alert("사용할 수 있는 비밀번호입니다.")
		}
	});
	
	$("#phone").blur(function() {
		phoneExpCheck=false;
		if(!regExpPhone.test($("input[id='phone']").val())) {
			phoneExpCheck=false;
		 	alert("형식에 맞지않는 전화번호입니다.")
	    
		}else{
			phoneExpCheck=true;
			alert("사용할 수 있는 전화번호 형식입니다.")
		}
	});
	
	
	$("#email").blur(function() {
		emailExpCheck=false;
		if(!regExpEmail.test($("input[id='email']").val())) {
			emailExpCheck=false;
		 	alert("형식에 맞지않는 이메일입니다.")
	    
		}else{
			emailExpCheck=true;
			alert("사용할 수 있는 이메일 형식입니다.")
		}
	});	
	//회원가입 유효성 검사

	
	

</script>

</html>