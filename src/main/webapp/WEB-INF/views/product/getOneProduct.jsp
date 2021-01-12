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
<link href="../css/product/productOne.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container con-prd">
			<div class="contents cont-prd">
				<div class="detail_wrap detail-prd">
					<div class="product_detail">
						<!-- 이미지 -->
						<div class="imgArea">
							<div class="thumbnail">
								<img src="../images/product/${dto.item_image}" class="thumbs">						
							</div>
						</div>
						<!-- 이미지 -->
						
						<form action="../cart/setCartInsert" method="post" id="frm">
						<div class="detailArea">
							<div class="infoArea">
								<div class="product_info">
									<ul>
										<li class="name">${dto.item_name}</li>
										<li class="price">${dto.item_price}</li>
									</ul>
									<!-- 탭 -->
									<div class="tab_wrap">
										<ul class="tabs">
											<li class="active" id="act1">
												<a>SIZE GUIDE</a>
											</li>
											
											<li class="act2">
												<a>DETAIL</a>
											</li>
											
											<li class="act3">
												<a>COMMENT</a>
											</li>
										</ul>
										
										<div class="tab_container">
											<div id="tab1" class="tab_content" style="display: inline-block;">
												<div class="tab_inner">
													<ul>
														<li>
														<!-- 테이블 영역 시작 -->
														<table style="width:90%; border: currentColor; border-image: none; text-align: center; border-collapse: collapse; table-layout: fixed;" class="table table-hover">
															<tbody>
																<tr>
																	<td style=" border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;"></td>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">어깨</span>
																	</td>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">가슴</span>
																	</td>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">소매</span>
																	</td>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">총길이</span>
																	</td>
																	
																</tr>
																
																<tr>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">FREE</span>
																	</td>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">0cm</span>
																	</td>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">0cm</span>
																	</td>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">0cm</span>
																	</td>
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;">
																		<span style="font-weight: bold;">0cm</span>
																	</td>
																	
																</tr>
																
																<tr>
																	<td style="border-top-color: rgb(0, 0, 0); border-bottom-color: rgb(0, 0, 0); border-top-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-bottom-style: solid;" colspan="5">
																		<span>사이즈 재는 방법에 따라 1~2cm 정도의 오차가 있을 수 있습니다.</span>
																	</td>
																</tr>
															</tbody>
														</table>
														<!-- 테이블 영역 끝 -->
														<br>
														
														모델 180cm / 67kg
														</li>
													</ul>
												
												</div>
											</div>
											<div id="tab2" class="tab_content" style="display: none;">
												<div class="tab_inner">
													<ul>
														<li>
															<pre style="width: 90%; overflow: hidden;">
FABRIC : 울 30% 나일론 30% 폴리 35% 스판 5
MODEL FITTING : M 사이즈 착용
신축성 : 약간
두께 : 두꺼움
비침 : 없음
LAUNDRY : 모든 의류의 첫 세탁은 손세탁 및 드라이클리닝을 권장합니다.
PRODUCTION : 제조자 - 모던이프 제휴업체 / 제조국 - 대한민국 / 제조년월 - 2020년 12월
품질보증기간 - 소비자 분쟁 해결 기준에 따름 / AS책임자와 고객센터 - 1522-4953
															</pre>
														</li>
													</ul>
												</div>
											</div>
											<div id="tab3" class="tab_content" style="display: none;">
												<div class="tab_inner">
													<ul>
														<li>
															<pre style="width: 90%; overflow: hidden;">
소재감과 패턴, 그리고 핏까지 전체적으로
굉장히 완성도가 높은 자켓입니다.

작고 촘촘한 헤링본 패턴으로 부담스럽지 않으면서
부드럽고 탄력적인 소재감이 눈에 띄는 아이템입니다.
어깨 라인부터 팔까지, 그리고 가슴부터 자켓의 밑단까지
전체적으로 깔끔하게 떨어지는 실루엣을 보여줍니다.

고급스러우면서 깔끔한 실루엣의 도톰한 자켓을
찾으시는 분들이라면 적극 추천해드리고 싶습니다
															</pre>
														</li>
													</ul>
												</div>
											</div>
												
											</div>
										</div>
										<!-- 탭 종료 -->
										
										<!-- 상세 정보 내역 -->
										<div>
											<div style="margin:15px 0;"></div>
											<div style="margin:15px 0;"></div>
											<table class="prd_option" style="border: 0; width: 90%; border-bottom: black 1px solid;">
												<caption>상품 옵션</caption>
												<tbody></tbody>
												<tbody>
													<tr class="product_option">
														<th style="width: 20%">size</th>
														<td>
															<select style="width: 100%; height: 26px;" id="selSize">
																<option value=""></option>
																<option value="M">M</option>
																<option value="L">L</option>
															</select>
														</td>
														
													
													</tr>
												</tbody>
												
												<tbody>
													<tr class="product_option">
														<th style="width: 20%">color</th>
														<td style="padding-top: 10px;">
															<select style="width: 100%; height: 26px;" id="selColor">
																<option value=""></option>
																<option value="Black">Black</option>
																<option value="Gray">Gray</option>
															</select>
														</td>
														
													
													</tr>
												</tbody>
												
												<tbody>
													<tr class="product_option">
														<th style="width: 20%">적립금</th>
														<td style="padding-top: 10px; padding-bottom: 10px;">${dto.item_reserve} (1%)</td>													
													</tr>
												</tbody>
												
											</table>																							
										</div>
										<!-- 상세 정보 내역 끝-->	
										<div class="totalProducts" style="display: none;">
											<table style="width: 90%; border-bottom: black 1px solid;">
												<tr>
													<td style="padding-top: 12px; padding-bottom: 12px;">
														<p class="product">
															${dto.item_name}
															<br>
															-
															<span class="color_choose">
																
															</span>
														</p>
													</td>
												
													<td>
														<div class="ea-box">
															<input type="text" class="ea-num" style="width: 30%" value=1 id="prdCount" readonly="true" name="cart_count">
															<input type="hidden" value="${member.member_num}" name="member_num">
															<input type="hidden" value="${dto.item_num}" name="item_num">
															<a href="#none" class="ea-up">
																<img src="../images/icon/btn_count_up.gif">
															</a>
															<!-- <br> -->
															<a href="#none" class="ea-down">
																<img src="../images/icon/btn_count_down.gif">
															</a>
															

														</div>
													</td>	
													
													<td>
														
														KRW <input type="text" value=89000 id="prdPrice" style="border: none; width: 60px;" readonly="true">원												
														<br>
														
														<input type="text" value=900 id="prdReserve" style="border: none; width: 30px;" readonly="true">원
														
													</td>
													
													<td>
														<a href="#none" class="ea-del" style="line-height: 30px;">
															<img src="../images/icon/btn_price_delete.gif">
														</a>	
													</td>
												</tr>
											</table>
										
										</div>
										
										<div class="totalPrice">
											총 합계 금액
											<span style="font-size: 12px;">(수량)</span>
											:
											<b class="total">
												<strong id="won">
													<em id="wonPrice">KRW ${dto.item_price}</em>
													
												</strong>
												(1개)
											</b>
										</div>
										
										<div class="product_action">
											<a href="#" class="buyBtn">BUY IT NOW</a>
											<a href="#" class="cartBtn">ADD TO CART</a>
										</div>
									</div>
								</div>
							</div>
							</form>
							<!-- detail area 끝 -->
							
							<div class="detail_additional">
								<div class="prdDetail">
									<div class="tab">
										<ul>
											<li class="selected" id="sel1">
												<a>디테일</a>
											</li>
											<li id="sel2">
												<a>배송 및 교환 안내</a>
											</li>
											<li id="sel3">
												<a>구매 후기</a>	
											</li>
											<li id="sel4">
												<a>상품 문의</a>
											</li>
										</ul>
									
									</div>
									<div class="cont">
										<img src="../images/product_cont/${dto.item_contents_image}">
										<br>
										<img src="../images/product_cont/${dto.item_contents_image2}">									
									</div>
									
									<div class="guide_inner" style="display: none;">
										<ul>
											<li class="title">배송안내</li>
											<li class="inner">
												<p>	
													<span style="font-family: 돋움,dotum;">
														<font face="Gulim">
															<strong>
																<span style="font-family: 돋움,dotum;">배송안내</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	7만원 이상 구매 시 무료배송, 7만원 미만의 경우 2,500원의 배송비가 추가됩니다.
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	(제주도 : 7만원 이상 구매 시 배송비 2,500원 할인되며, 7만원 미만의 경우 6,000원입니다)
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	CJ 택배로 발송되며, CJ택배로 발송시 배송기간은 2-3일(주말, 공휴일 제외) 소요될 수 있습니다.
																</span>
																
															</strong>
														</font>															
													</span>
												</p>
												<br>
												<br>
												<p>	
													<span style="font-family: 돋움,dotum;">
														<font face="Gulim">
															<strong>
																<span style="font-family: 돋움,dotum;">택배발송</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 평일 PM 19:00 까지 결제 완료된 주문건에 한하여 거래처에 입고요청되어 입고 완료시 정상 발송됩니다.
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 택배발송 업무시간은 평일 PM 18:00 마감됩니다.
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 주문 후 평균적으로 2~3일정도 상품 입고기간이 소요됩니다.
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 택배 발송 시 알림톡을 통해 운송장번호가 발송됩니다. (알림톡 미발송시 문자발송)
																</span>
																
															</strong>
														</font>															
													</span>
												</p>
										
											</li>
										</ul>
										
										<ul>
											<li class="title">교환 및 반품안내</li>
											<li class="inner">												
												<p>	
													<span style="font-family: 돋움,dotum;">
														<font face="Gulim">
															<strong>
																<span style="font-family: 돋움,dotum;">교환 및 반품주소</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 경기도 수원시 팔달구 인계동 1031-2 성지빌딩 701호 모던이프
																</span>																
															</strong>
														</font>															
													</span>
												</p>
												<br>
												<br>
												<p>	
													<span style="font-family: 돋움,dotum;">
														<font face="Gulim">
															<strong>
																<span style="font-family: 돋움,dotum;">교환 및 반품안내</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 상품 수령 후 7일 이내 모던이프 Q&A 또는 고객센터(1522-4953) 로 접수
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 타택배(편의점, 우체국, 로젠 등) 이용 시 선불로 발송
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 모던이프와 계약된 CJ택배가 아닌 타택배(편의점, 우체국, 로젠 등) 로
																	발송된 상품이 분실된 경우 책임을 지지 않습니다
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 택배 발송 시 알림톡을 통해 운송장번호가 발송됩니다. (알림톡 미발송시 문자발송)
																</span>
																
															</strong>
														</font>															
													</span>
												</p>
												<br>
												<br>
												<p>	
													<span style="font-family: 돋움,dotum;">
														<font face="Gulim">
															<strong>
																<span style="font-family: 돋움,dotum;">불량사유에 포함되지 않는 항목</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 배송시 발생한 상품의 구김
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 재봉실밥 일부 정리가 안된 경우
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 단추가 다소 허술하게 마감된 경우
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 원단 특유의 냄새
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 원단 자체의 잡실이나 스크래치 / 패턴위치차이 / 빈티지함을 위한 디테일 차이
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 사이즈 측정방법에 따라 표기된 사이즈 오차범위 (±1~2cm)
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 모니터 해상도의 미세한 차이로 인한 색상&이미지 차이
																</span>
																<br>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	사소한 부분들은 불량사유가 될 수 없는 부분 안내드리겠습니다.
																</span>
																
																
															</strong>
														</font>															
													</span>
												</p>
										
											</li>
										</ul>
										
										<ul>
											<li class="title">적립금 및 포인트 안내</li>
											<li class="inner">												
												<p>	
													<span style="font-family: 돋움,dotum;">
														<font face="Gulim">
															<strong>
																<span style="font-family: 돋움,dotum;">교환 및 반품주소</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 상품 수령후 2주안에 작성된 후기에 한하여 적립금이 지급됩니다.
																</span>
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 3줄 이상의 후기 작성시 500 POINT
																</span>	
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 단순 상품(옷만) 포토후기 작성시 1,000 POINT
																</span>	
																<br>
																<span style="font-family: 돋움,dotum; font-weight: 400;">
																	- 상품 착용(착용컷) 포토후기 작성시 2,000 POINT 
																</span>																	
															</strong>
														</font>															
													</span>
												</p>
												<br>
												<br>
											</li>
										</ul>
									</div>
								</div> <!-- product detail-->
							</div>
						</div>
				</div>
				<!-- detail wrap 끝 -->
			</div> <!-- contents -->
				
			<c:import url="../template/footer.jsp"></c:import>
			
			</div> <!-- container -->
		</div> <!-- main_right -->
		
	</div> <!-- wrap -->

<script type="text/javascript">

	$("#act1").click(function(){
		$(".act2").removeClass("active");
		$(".act3").removeClass("active");
		$("#act1").addClass("active");
		$("#tab2").hide();
		$("#tab3").hide();
		$("#tab1").fadeIn();
	});

	$(".act2").click(function(){
		$("#act1").removeClass("active");
		$(".act3").removeClass("active");
		$(".act2").addClass("active");
		$("#tab1").hide();
		$("#tab3").hide();
		$("#tab2").fadeIn();
	});

	$(".act3").click(function(){
		$("#act1").removeClass("active");
		$(".act2").removeClass("active");
		$(".act3").addClass("active");
		$("#tab1").hide();
		$("#tab2").hide();
		$("#tab3").fadeIn();
	});

	$("#selColor").click(function(){
		var size = $("#selSize").val();
		var color = $("#selColor").val();

		if(size != '' & color !=''){
			$(".color_choose").html("<span>"+size+"/"+color+"</span>");
			$(".totalProducts").fadeIn();
		}
	});

	$("#sel1").click(function(){
		$("#sel2").removeClass("selected");
		$("#sel3").removeClass("selected");
		$("#sel4").removeClass("selected");
		$("#sel1").addClass("selected");
		$(".guide_inner").hide();
		$(".cont").fadeIn();
		
	});

	$("#sel2").click(function(){
		$("#sel1").removeClass("selected");
		$("#sel3").removeClass("selected");
		$("#sel4").removeClass("selected");
		$("#sel2").addClass("selected");
		$(".cont").hide();
		$(".guide_inner").fadeIn();
	});

	$("#sel3").click(function(){
		$("#sel1").removeClass("selected");
		$("#sel2").removeClass("selected");
		$("#sel4").removeClass("selected");
		$("#sel3").addClass("selected");
		$(".cont").hide();
		$(".guide_inner").hide();
	});

	$("#sel4").click(function(){
		$("#sel1").removeClass("selected");
		$("#sel2").removeClass("selected");
		$("#sel3").removeClass("selected");
		$("#sel4").addClass("selected");
		$(".cont").hide();
		$(".guide_inner").hide();
	});

	$(".ea-up").click(function(){
		
		var count = $("#prdCount").val();
		var price = $("#prdPrice").val();
		var reserve = $("#prdReserve").val()
		
		var price2 = '${dto.item_price}';
		var reserve2 = '${dto.item_reserve}';

		if(count <= 9){
			count++;
		$("#prdCount").val(count);
		$("#prdPrice").val(price2*count);
		$("#prdReserve").val(reserve2*count);
		
		}else{
			alert("최대 수량은 10개입니다.");
		}
							
		$(".total").html("<b><strong><em>KRW "+(price2*count)+ "</em></strong> ("+count+"개)</b>");
	});

	$(".ea-down").click(function(){

		var count = $("#prdCount").val();
		var price = $("#prdPrice").val();
		var reserve = $("#prdReserve").val()
		
		var price2 = '${dto.item_price}';
		var reserve2 = '${dto.item_reserve}';
		
		if(count > 1) {
			count--;
		$("#prdCount").val(count);
		$("#prdPrice").val(price-price2);
		$("#prdReserve").val(reserve-reserve2);
		$(".total").html("<b><strong><em>KRW "+(price-price2)+ "</em></strong> ("+count+"개)</b>");
		
		}else{
			alert("최소 수량은 1개입니다.");
			$("#prdCount").val(1);
			
			
		}

		
		
		
	});


	$(".ea-del").click(function(){
		$(".totalProducts").hide();
		
	});

	$(".cartBtn").click(function(){

		var size = $("#selSize").val();
		var color = $("#selColor").val();

		if(size !='' && color !=''){
			$("#frm").submit();
			
		}else{
			alert("사이즈 혹은 색상을 선택해주세요.")
			location.href = "./getOneProduct?item_num=${dto.item_num}";	
			
		}
		
		
	});
	

</script>

</body>
</html>