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
<link href="../css/order/payment.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container con-pay">
			<div class="contents cont-pay">
				<div class="board_shape">
					<div class="board_name">
						<p class="name_text">
							payment
						</p>
					</div>
					<div class="board_body">
					
						<form action="./payment" id="frm" method="post" class="form-horizontal" name="form">
							<input type="hidden" value="${member.member_num}" name="member_num">
							<input type="hidden" value="${in.item_num}" name="item_num">
							<input type="hidden" value="${ci.cart_num}" name="cart_num">
							<div class="col-sm-8 pay-box box1">
								<div class="pay-title">
									<h2 class="box-sub-title">배송지</h2>
								</div>
								
								<div class="member-info">
									<table>
										<tbody>
											<tr><%-- 받는사람 --%>
												<th class="th-receiver">
													<label class="col-sm-2 control-label" for="receiver">받는사람 
														<span><img alt="" src="../images/ness.png" class="ness"></span>
													</label>
												</th>
												<td>
													<div class="col-sm-8" style="margin: 0;">
														<input type="text" class="form-control text" id="receiver" value="${member.member_name}" name="member_name">
													</div>
												</td>
											</tr>
											<tr><%-- 주소 검색 --%>
												<th class="th-addr">
													<label class="col-sm-2 control-label" for="search-addr">주소 
														<span><img alt="" src="../images/ness.png" class="ness"></span>
													</label>
												</th>
												<td>
													<input type="button" id="btn-addr" class="btn" value="주소검색" onclick="goPopup();"> 
													<input type="text" class="form-control text" id="search-addr" value="${member.roadFullAddr}" name="roadFullAddr">
													<!-- <div class="col-sm-8 detail-addr">
														<input type="text" class="form-control text" id="detail-addr1">
														<input type="text" class="form-control text" id="detail-addr2">
													</div> -->
												</td>
											</tr>
											<tr><%-- 번호 입력 --%>
												<th class="th-cell">
													<label class="col-sm-2 control-label" for="cellnum">휴대전화 
														<span><img alt="" src="../images/ness.png" class="ness"></span>
													</label>
												</th>
												<td>
													<div class="col-sm-8 write-cellbox">
														<div class="col-sm-3 write-cellnum">
															<input type="text" class="form-control cellbox" id="cell2" value="${member.member_phone}"> 
														</div>
													</div>
												</td>
											</tr>
											<tr><%-- 이메일 입력 --%>
												<th class="th-cell">
													<label class="col-sm-2 control-label" for="email">이메일 
														<span><img alt="" src="../images/ness.png" class="ness"></span>
													</label>
												</th>
												<td style="padding: 8px 0;">
													<div class="col-sm-8 write-email" id="email">
														<input type="text" class="form-control text emailbox" id="email1" value="${member.member_email}">
													</div>
												</td>
											</tr>
										</tbody>	
									</table>
									<div class="col-sm message-box">
										<select class="sel-message">
											<option>-- 메시지 선택 (선택사항) --</option>
											<option>배송 전에 미리 연락바랍니다.</option>
											<option>부재 시 경비실에 맡겨주세요.</option>
											<option>부재 시 문 앞에 놓아주세요.</option>
											<option>빠른 배송 부탁드립니다.</option>
											<option>택배함에 보관해 주세요.</option>
											<option>직접 입력</option>
										</select>
									</div> <%-- message-box --%>
									<div class="col-sm set-main-addr">
										<input type="checkbox" class="check-addr">
										<label>기본 배송지로 저장</label>
									</div> <%-- set-main-addr --%>
								</div> <%-- member-info --%>
							</div> <%-- pay-box box1 --%>
							
							<div class="col-sm-8 order-prd">
								<div class="pay-title">
									<h2 class="box-sub-title">주문상품</h2>
								</div>
								<div class="order-area">
									<div class="order-list">
										<div class="prd-info">
											<div class="prd-box">
												<div class="thumbnail">
													<img alt="" src="../images/product/${ci.item_image}">
												</div>
												<div class="desc">
													<p>상품명 : ${ci.item_name}</p>
													<p>옵션 : ${ci.item_size}/${ci.item_color}</p>
													<p>수량 : <input type="text" id="count" style="border: none;" value="${ci.cart_count}" readonly="true"></p>
													<p>금액 : <input type="text" id="price" style="border: none;" value="${ci.item_price}" readonly="true"></p>
												</div>
												<i class="fa fa-close btn-remove" id="btn-remove" style="font-size:24px"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-sm-8 discount">
								<div class="discount-box">
									<div class="pay-title">
										<h2 class="box-sub-title">할인 / 부가결제</h2>
									</div>
									<div class="use-mile-box">
										<p class="head-mile">적립금</p>
										<div class="write-mile">
											<input type="text" class="form-control text mile" id="use-mile" value="${ci.item_reserve}">
											<button type="button" id="btn-mile" class="btn btn-use" name="item_reserve">전액사용</button>
										</div>
										<div class="min-mile">
											<p>최소 적립금 2,500원 이상일 때 사용 가능합니다.</p>
											<p>최대 사용금액은 제한이 없습니다.</p>
											<p>1회 구매시 적립금 최대 사용금액은 2,000원입니다.</p>
											<p>적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면 주문이 완료됩니다.</p>
										</div>
									</div>
									<div class="total-pay total-mile">
										<h3>적용금액</h3>
										<strong><input type="text" id="price2" style="border: none; text-align: right; background-color: #eff1f4;" value="${ci.item_price}" readonly="true"> 원</strong>
									</div>
								</div>
							</div>
							
							<div class="col-sm-8 payment">
								<div class="payment-box">
									<div class="pay-title">
										<h2 class="box-sub-title">결제정보</h2>
									</div>
									<div class="pay-info-box">
										<div class="pay-info-detail">
											<table style="margin-bottom: 14px;">
												<tbody>
													<tr>
														<th>주문상품</th>
														<td><span id="total-price-base"><input type="text" id="price3" style="border: none; text-align: right;" value="${ci.item_price}" readonly="true"> 원</span></td>
													</tr>
													<tr>
														<th>할인/부가결제</th>
														<td><span id="total-price-dc">0 원</span></td>
													</tr>
													<tr>
														<th>배송비</th>
														<td><span id="total-price-deli">0 원</span></td>
													</tr>
												</tbody>
											</table>
											<div class="total-pay total-payment">
												<h3>결제금액</h3>
												<strong><input type="text" id="price4" style="border: none; text-align: right; background-color: #eff1f4;" value="${ci.item_price}" readonly="true"> 원</strong>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-sm-8 pay-method">
								<div class="method-box">
									<div class="pay-title">
										<h2 class="box-sub-title">결제수단</h2>
									</div>
									<div class="method-cont">
										<div class="sel-method">
											<div class="sel-meth-box">
												<div class="sel-head">
													<p>결제 수단 선택</p>
												</div>
												<div class="choice">
													<span class="sp-meth">
														<input type="radio" name="pay-meth">
														<label>무통장 입금</label>
													</span>
													<span class="sp-meth">
														<input type="radio" name="pay-meth">
														<label>계좌이체</label>
													</span>
													<span class="sp-meth">
														<input type="radio" name="pay-meth">
														<label>카드 결제</label>
													</span>
													<span class="sp-meth">
														<input type="radio" name="pay-meth">
														<label>휴대폰 결제</label>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-sm-8 order-fin">
								<div class="order-fin-btn">
									<button type="button" class="btn order-btn" id="orderBtn">결제</button>
								</div>
							</div>
							
						</form>
					
					</div>				
				
				</div>
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">
//도로명 주소

function goPopup(){
// 주소검색을 수행할 팝업 페이지를 호출합니다.
// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
var pop = window.open("../member/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 

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

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">

	var count = $("#count").val();
	var price = $("#price").val();
	
	$("#price").val(count*price);
	$("#price2").val(count*price);
	$("#price3").val(count*price);
	$("#price4").val(count*price);
	

	$("#orderBtn").click(function(){
		var name = $("#receiver").val();
		var addr = $("#search-addr").val();
		var phone = $("#cell2").val();
		var email = $("#email1").val();
		
		if(name !='' && addr !='' && phone !='' && email != '') {
			
			var IMP = window.IMP; // 생략가능
			IMP.init('imp44190575'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

			IMP.request_pay({
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '주문명:결제테스트',
			    amount : 101,
			    buyer_email : email,
			    buyer_name : name,
			    buyer_tel : phone,
			    buyer_addr : addr,
			    buyer_postcode : '123-456',
			    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			}, function(rsp) {
			    if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			        $("#frm").submit();
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;			        
			    }			    
			    alert(msg);   	   
			});			
		}else{
			alert("필수사항을 입력해주세요.")
		}	
	});



</script>

</body>
</html>