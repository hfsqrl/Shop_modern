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
					
						<form action="./payment" id="frm" method="post" class="form-horizontal">
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
														<input type="text" class="form-control text" id="receiver" name="member_name">
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
													<input type="button" id="btn-addr" class="btn" name="roadFullAddr" value="주소검색"> 
													<input type="text" class="form-control text" id="search-addr">
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
															<input type="text" class="form-control cellbox" id="cell2"> 
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
														<input type="text" class="form-control text emailbox" id="email1">
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
												</div>
												<div class="desc">
													<p>상품명</p><input type="hidden" name="">
													<p>옵션</p><input type="hidden" name="">
													<p>수량</p><input type="hidden" name="">
													<p>금액</p><input type="hidden" name="">
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
											<input type="text" class="form-control text mile" id="use-mile">
											<button id="btn-mile" class="btn btn-use" name="item_reserve">전액사용</button>
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
										<strong>원</strong>
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
														<td><span id="total-price-base"> 원</span></td>
													</tr>
													<tr>
														<th>할인/부가결제</th>
														<td><span id="total-price-dc"> 원</span></td>
													</tr>
													<tr>
														<th>배송비</th>
														<td><span id="total-price-deli"> 원</span></td>
													</tr>
												</tbody>
											</table>
											<div class="total-pay total-payment">
												<h3>결제금액</h3>
												<strong>원</strong>
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
									<button type="button" class="btn order-btn">결제</button>
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

</body>
</html>