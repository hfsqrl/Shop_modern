<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board}</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<link href="../css/common/default.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
<link href="../css/board/boardList.css" rel="stylesheet">
<link href="../css/cart/cart.css" rel="stylesheet">
</head>
<body>
<div id="wrap">
	<c:import url="../template/leftmenu.jsp"></c:import>
	
	<div class="main_right"> <!-- container_wrap -->
		<c:import url="../template/header.jsp"></c:import>
		<div class="container">
			<div class="contents cont-notice">
			
				<div class="board_shape">
					<div class="board_name">
						<p class="name_text">
							cart
						</p>
					</div>
					<div class="board_body">
						<table class="table table-bordered board_table" >
							<thead class="table-head">
								<tr>
									<th style="width: 10%;">IMAGE</th>
									<th style="width: 40%;">PRODUCT</th>
									<th>PRICE</th>
									<th>QTY</th>
									<th>DELIVERY</th>
									<th>CHARGE</th>
									<th>CHOICE</th>
								</tr>
							</thead>
							<tbody class="table-list">
									<c:forEach items="${cart}" var="vo">
									<tr style="line-height: 50px;">
										
										<td><img src="../images/product/${vo.item_image}" style="width: 70px; height: 100px;"></td>
										<td style="line-height: 100px;">
											${vo.item_name} / [옵션 : ${vo.item_color} / ${vo.item_size}]				
										</td>
										<td style="line-height: 100px;">${vo.item_price}</td>
										<td style="line-height: 100px;">${vo.cart_count}</td>
										<td style="line-height: 100px;">기본배송</td>
										<td style="line-height: 100px;">무료</td>
										<td style="line-height: 100px; width: 10%">												
											<div>
												<span>
													<a href="#none" class="btn_ccc" id="carOneDel">
														DELETE
													</a>
												</span>
											</div>										
										</td>
										
									</tr>
									</c:forEach>	
							</tbody>
							
							<tfoot>
								<tr>
									<td colspan="8">기본배송</td>
								</tr>
							</tfoot>
						</table>
					</div>
					
					<div class="base-button">
						<span class="gRight">
							<a href="#none" class="btn_ccc" id="delCart">
								장바구니 비우기
							</a>
						</span>
					</div>
					
					<div class="board_body">
						<table class="table table-bordered board_table">
							<thead class="table-head">
								<tr>
									<th style="width: 25%;">총 상픔금액</th>
									<th style="width: 25%;">총 배송비</th>
									<th style="width: 50%;">결제예정금액</th>								
								</tr>
							</thead>
							<tbody class="table-list">
									
									<tr>
										<td>KRW ${sum}</td>
										<td>+ KRW 0</td>
										<td>= ${sum}</td>									
									</tr>
									
							</tbody>
							
						</table>
					</div>
					
					<div class="base-button-order">
						<a href="#none" class="btn_000_180">전체상품주문</a>
						<a href="#none" class="btn_000_180">선택상품주문</a>
					</div>
					
					<div class="base-help">
						<h3>이용안내</h3>
						<div class="inner">
							<h4>장바구니 이용안내</h4>
							<ol>
								<li class="item1">
								해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.
								</li>
								<li class="item2">
								해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.
								</li>
								<li class="item3">
								선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.
								</li>
								<li class="item4">
								[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.
								</li>
								<li class="item5">
								장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.
								</li>
								<li class="item6">
								파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.
								</li>
							</ol>
							
							<h4>무이자할부 이용안내</h4>
							<ol>
								<li class="item1">
								상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.
								</li>
								<li class="item2">
								[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.
								</li>
																				
								<li class="item3">
								단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.
								</li>
							</ol>
						</div>
					</div>
				
					
				</div>
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">

	$("#delCart").click(function() {

		location.href = "./setDeleteAllCart";
	});

	

</script>

</body>
</html>