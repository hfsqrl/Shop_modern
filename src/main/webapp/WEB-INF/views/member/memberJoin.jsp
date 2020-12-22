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
			     <form:input path="member_id" class="form-control empty" placeholder="숫자와 문자 포함   6~12자리"/>
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
			     <form:input type="password" path="member_pw2" class="form-control" placeholder="특수문자 , 문자 , 숫자 포함  8~15자리 이내의 암호" />
      			 <form:errors path="member_pw2" cssClass="error"></form:errors>
			    </div>
			     <br>
			     <hr>
			 </div>
			
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="name">비밀번호 확인 질문</label>
			    <div class="col-sm-4">
				   <form:select path="member_ask">
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
			     <form:input path="member_name" class="form-control empty"/>
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
			       <input type="date" id="date" name="member_birth" class="form-contro lempty">
		
			    </div>
			     <br>
			     <hr>
			 </div>
			 
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="phone">휴대전화 </label>
			    <div class="col-sm-4">			       
			       <form:input path="member_phone" class="form-control empty" placeholder="ex) 010-xxxx-xxxx"/>
			       <input type="button" id="btnPhone" value="중복확인" class="checkButt">		
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
					<form:input path="member_email" class="form-control" placeholder="ex) aaa@email.com"/>
				    <input type="button" id="btnEmail" value="중복확인" class="checkButt">
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
				   <select name="member_region">
  					<optgroup label="선택">
    				<option value="경기">경기</option>
    				<option value="서울">서울</option>
    				<option value="인천">인천</option>
    				<option value="강원">강원</option>
  					</optgroup>
					</select>
			       <div class="emptyResult"></div>
			    </div>
			    
			 </div>
			  <br>
			  <hr>
			  
			 <div class="col-sm-12 join_input">
			    <label class="col-sm-2 join_text" for="refund_info">환불 계좌 정보</label>
			     <div class="col-sm-4">
			       
			       
				   <h5>> 예금주</h5><input type="text" id="refund_name" name="member_refund_name" class="form-control empty">  
			       <div class="emptyResult"></div>
			   		
			   		
			       <h5>> 은행명</h5>
			       <div class="col-sm-4">
				  	 <select name="member_refund_bank">
  						<optgroup label="은행선택">
    					<option value="산업은행">산업은행</option>
    					<option value="기업은행">기업은행</option>
    					<option value="국민은행">국민은행</option>
    					<option value="하나(외환)은행">하나(외환)은행</option>
  						</optgroup>
					  </select>
			      	 <div class="emptyResult"></div>
			    	</div><br>
			    
			    <div>
				   <h5>> 계좌번호</h5>
				   <input type="text" id="refund_name" name="member_refund_account" class="form-control empty">  
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
	$("#joinBtn").click(function() {
		$("#frm").submit();
			
	});
	

</script>

</html>