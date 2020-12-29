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
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
<link href="../css/member.css" rel="stylesheet">
<style type="text/css">
	.error {
		color: red;
	}
</style>
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right">
		<c:import url="../template/header.jsp"></c:import>
		
		<div class="container">
			<div style="padding: 0; text-align: left;">
				<form:form modelAttribute="memberVO" id="frm" class="form-horizontal" method="post" name="form">
				
					<h3 style="text-align: left;">회원 정보 수정</h3>
					 
					 <div class="col-sm-12 join_input">
					 	<label class="col-sm-2 join_text" for="id">아이디</label>
					 	<div class="col-sm-4"> 
						 	<form:input path="member_id" class="form-control input" placeholder="숫자와 문자 포함 6~12자리" id="id" value="${member.member_id}" readonly="true"/>
			      			<form:errors path="member_id" cssClass="error"></form:errors>
					 	</div>
					 </div>
					 <br>
					 <div class="col-sm-12 join_input">
					    <label class="col-sm-2 join_text" for="pw">비밀번호</label>
					    <div class="col-sm-4">
					       <input type="password" id="pw" name="member_pw" class="form-control empty" placeholder="특수문자, 문자, 숫자 포함 8~15자리 이내의 암호">
					    </div>
					 </div>
					 <br>
					    
					  <div class="col-sm-12 join_input">
					    <label class="col-sm-2 join_text" for="pw2">비밀번호 확인</label>
					    <div class="col-sm-4">
					     <form:input type="password" id="pw2" path="member_pw2" class="form-control input" placeholder="특수문자 ,문자 , 숫자 포함 8~15자리 이내의 암호" />
		      			 <form:errors path="member_pw2" cssClass="error"></form:errors>
					    </div>
					     <br>
					     
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
					    
					 </div>
				
					  <div class="col-sm-12 join_input">
					    <label class="col-sm-2 join_text" for="answer">비밀번호 확인 답변</label>
					    <div class="col-sm-4">				 
					     <form:input path="member_answer" class="form-control" value="${member.member_answer}"/>
		      			 <form:errors path="member_answer" cssClass="error"></form:errors>
					    </div>
					     <br>
					     
					 </div>
					 
					 <div class="col-sm-12 join_input">
					    <label class="col-sm-2 join_text" for="name">이름</label>
					    <div class="col-sm-4">				   
					     <form:input path="member_name" class="form-control" id="name" value="${member.member_name}"/>
		      			 <form:errors path="member_name" cssClass="error"></form:errors>
					    </div>
					    <br>
					     
					 </div>
					
					 <div class="col-sm-12 join_input">
					    <label class="col-sm-2 join_text" for="roadFullAddr">주소</label>
					    <div class="col-sm-4">
					    	<div class="addrBtn">
					    		<input type="button" id="address_btn" value="도로명 주소" onclick="goPopup();">
					    	</div>
					    					    
					     <form:input path="roadFullAddr" id="roadFullAddr" class="form-control empty" value="${member.roadFullAddr}"/>
		      			 <form:errors path="roadFullAddr" cssClass="error"></form:errors>
					    </div>
					    <br>
					     
					 </div>
						
						
					 <div class="col-sm-12 join_input">
					    <label class="col-sm-2 join_text" for="birth">생년월일</label>
					    <div class="col-sm-4">
					       <input type="date" id="date" name="member_birth" class="form-control empty" value="${member.member_birth}">
				
					    </div>
					     <br>
					     
					 </div>
					 
					 <div class="col-sm-12 join_input">
					    <label class="col-sm-2 join_text" for="phone">휴대전화 </label>
					    <div class="col-sm-4">			       
					       <form:input id="phone" path="member_phone" class="form-control empty" placeholder="ex) 010-xxxx-xxxx" value="${member.member_phone}"/>			      		
		      			 <form:errors path="member_phone" cssClass="error"></form:errors>
					    </div>
					     <br>
					     
					 </div>
					 
					  <div class="col-sm-12 join_input">
					     <label class="col-sm-2 join_text" for="sms_agg">SMS 수신여부</label>
						   <div class="col-sm-4">
							<label>
							<input type="checkbox" value=1 name="member_sms_agg"> 동의함</label>
			  				
						   </div>
						   <br>
					    
					  </div>
					  
				
					  <div class="col-sm-12 join_input">
					     <label class="col-sm-2 join_text" for="email">이메일</label>
						   <div class="col-sm-4">					
							<form:input id="email" path="member_email" class="form-control" placeholder="ex) aaa@email.com" value="${member.member_email}"/>				    
		      			 <form:errors path="member_email" cssClass="error"></form:errors>
						    </div>
						  <br>
					    
					  </div>
					 
					  <div class="col-sm-12 join_input2">
					     <label class="col-sm-2 join_text" for="email_agg">이메일 수신여부</label>
						   <div class="col-sm-4">
							<label><input type="checkbox" value=1 name="member_email_agg"> 동의함</label><br>
			  				
						   </div>
						    <br>
					       				
					  </div>
					  
					  <div style="text-align:left; padding: 20px 0;" >
					  	<span style="font-size: 24px;">추가정보</span>
					  </div>
					
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
					 
					  
					 <div class="col-sm-12 join_input">
					    <label class="col-sm-2 join_text" for="refund_info">환불 계좌 정보</label>
					    <div class="col-sm-4">
							<h5>> 예금주</h5><input type="text" id="refund_name" name="member_refund_name" class="form-control empty" value="${member.member_refund_name}">  
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
							   <input type="text" id="refund_name" name="member_refund_account" class="form-control empty" placeholder="'-' 를 제외한 숫자만 입력해주세요." value="${member.member_refund_account}">  
						       <div class="emptyResult"></div>
						 	</div>
						 	<br>
						</div> 
					</div>
					 
									
         		</form:form>
  					<div style="text-align: center;">
  					<input type="button" id="delBtn" value="회원 탈퇴" class="checkButt">
					<input type="button" id="modBtn" value="회원 정보 수정" class="checkButt">
				</div>
			</div>
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div>
</div>
	
</body>
<script type="text/javascript">

	//유효성 검사 정규식
	var passRule = /^[A-Za-z0-9]{6,12}$/;//아이디 정규식 숫자와 문자 포함 형태의 6~12자리 이내의 아이디 정규식
	var regexPw = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;// 비밀번호 정규식 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
	var regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;//핸드폰 번호 정규식
	//유효성 검사 정규식
	
	$("#modBtn").click(function() {
	
		$("#frm").submit();
		alert("회원 정보 수정이 완료되었습니다.");
								
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

	//도로명 주소
	
	function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("md1/member/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadFullAddr.value = roadFullAddr;
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.engAddr.value = engAddr;
		document.form.jibunAddr.value = jibunAddr;
		document.form.zipNo.value = zipNo;
		document.form.admCd.value = admCd;
		document.form.rnMgtSn.value = rnMgtSn;
		document.form.bdMgtSn.value = bdMgtSn;
		document.form.detBdNmList.value = detBdNmList;
		/** 2017년 2월 추가제공 **/
		document.form.bdNm.value = bdNm;
		document.form.bdKdcd.value = bdKdcd;
		document.form.siNm.value = siNm;
		document.form.sggNm.value = sggNm;
		document.form.emdNm.value = emdNm;
		document.form.liNm.value = liNm;
		document.form.rn.value = rn;
		document.form.udrtYn.value = udrtYn;
		document.form.buldMnnm.value = buldMnnm;
		document.form.buldSlno.value = buldSlno;
		document.form.mtYn.value = mtYn;
		document.form.lnbrMnnm.value = lnbrMnnm;
		document.form.lnbrSlno.value = lnbrSlno;
		/** 2017년 3월 추가제공 **/
		document.form.emdNo.value = emdNo;
		
}
	
	//도로명 주소

</script>

</html>