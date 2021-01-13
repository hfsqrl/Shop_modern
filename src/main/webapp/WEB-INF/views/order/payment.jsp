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
								<div class="col-sm-8 member-radio">
									<input id="equal" name="equal" fw-label="1" value="M" type="radio" checked>
									<label for="equal">회원 정보와 동일</label>
									<input id="new-deli" name="new-deli" fw-label="1" value="F" type="radio">
									<label for="new-deli">새로운 배송지</label>      
								</div>
								<div class="member-info">
									<table>
										<tbody>
											<tr><%-- 받는사람 --%>
												<!-- <div class="form-group"></div> -->
												<th class="th-receiver">
													<label class="col-sm-2 control-label" for="receiver">받는사람 
														<span><img alt="" src="../images/ness.png" class="ness"></span>
													</label>
												</th>
												<td>
													<div class="col-sm-8">
														<input type="text" class="form-control text" id="receiver" name="member_name" value="">
													</div>
												</td>
											</tr>
											<tr><%-- 주소 검색 --%>
												<!-- <div class="form-group"></div> -->
												<th class="th-addr">
													<label class="col-sm-2 control-label" for="search-addr">주소 
														<span><img alt="" src="../images/ness.png" class="ness"></span>
													</label>
												</th>
												<td>
													<!-- <div class="search-addr"></div> -->
													<input type="text" class="form-control text" id="search-addr">
													<button id="btn-addr" class="btn" name="roadFullAddr">주소검색</button>
													<div class="col-sm-8 detail-addr">
														<input type="text" class="form-control text" id="detail-addr1">
														<input type="text" class="form-control text" id="detail-addr2">
													</div>
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
														<select class="sel-cellnum" name="member_phone" id="cellnum">
															<option>010</option>
															<option>011</option>
															<option>016</option>
															<option>017</option>
															<option>018</option>
															<option>019</option>
														</select>
														<div class="col-sm-3 write-cellnum" style="margin: 0 3px;">
															<input type="text" class="form-control cellbox" id="cell1">
														</div>
														<div class="col-sm-3 write-cellnum" style="margin: 0 0 0 3px;">
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
													<div class="col-sm-6 write-email" id="email">
														<input type="text" class="form-control text emailbox" id="email1">
													</div>
													<p class="at">@</p>
													<!--  class="at">@ -->
													<div>
														<select class="sel-email" name="member_email" id="email2">
															<option>-이메일 선택-</option>
															<option>naver.com</option>
															<option>daum.net</option>
															<option>nate.com</option>
															<option>hotmail.com</option>
															<option>gmail.com</option>
															<option>직접 입력</option>
														</select>
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
												</div>
												<i class="fa fa-close btn-remove" id="btn-remove" style="font-size:24px"></i>
											</div>
										</div>
									</div>
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

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">
	
</script>

</body>
</html>