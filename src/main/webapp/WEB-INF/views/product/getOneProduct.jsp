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
		<div class="container">
			<div class="contents">
				<div class="detail_wrap">
					<div class="product_detail">
						<!-- 이미지 -->
						<div class="imgArea">
							<div class="thumbnail">
								<img src="../images/product/${dto.item_image}" class="thumbs">						
							</div>
						</div>
						<!-- 이미지 -->
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
																	<td style="border-bottom-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid;"></td>
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
									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->

<script type="text/javascript">

	$("#act1").click(function(){
		$(".act2").removeClass("active")
		$(".act3").removeClass("active")
		$("#act1").addClass("active");
		$("#tab2").hide();
		$("#tab3").hide();
		$("#tab1").fadeIn();
	});

	$(".act2").click(function(){
		$("#act1").removeClass("active")
		$(".act3").removeClass("active")
		$(".act2").addClass("active");
		$("#tab1").hide();
		$("#tab3").hide();
		$("#tab2").fadeIn();
	});

	$(".act3").click(function(){
		$("#act1").removeClass("active")
		$(".act2").removeClass("active")
		$(".act3").addClass("active");
		$("#tab1").hide();
		$("#tab2").hide();
		$("#tab3").fadeIn();
	});

	

</script>

</body>
</html>