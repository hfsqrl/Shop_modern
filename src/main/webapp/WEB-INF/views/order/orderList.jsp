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
			
				<div class="board_shape" >
					<div class="board_name">
						<p class="name_text">
							order tracking
						</p>
					</div>
					<div class="board_body">
						<table class="table table-bordered board_table" >
							<thead class="table-head">
								<tr>
									<th style="width: 10%; line-height: 50px;">주문번호</th>
									<th style="width: 10%; line-height: 50px;">이미지</th>
									<th style="width: 40%; line-height: 50px;">상품정보</th>
									<th style="line-height: 50px;">수량</th>
									<th style="line-height: 50px;">상품구매금액</th>
									<th style="line-height: 50px;">주문처리상태</th>
									<th style="line-height: 50px;">주문시간</th>
								</tr>
							</thead>
							
							<tbody class="table-list">
								<c:forEach items="${order}" var="vo">									
								<tr>
									<td style="line-height: 100px;">${vo.order_num}</td>
									<td style="line-height: 100px;"><img src="../images/product/${vo.item_image}" style="width: 70px; height: 100px;"></td>
									<td style="line-height: 50px;">
										${vo.item_name}
										<br>
										[옵션 : ${vo.item_size}/${vo.item_color}]
									</td>
									<td style="line-height: 100px;">${vo.cart_count}</td>
									<td style="line-height: 100px;">${vo.item_price}</td>
									<td style="line-height: 100px;">${vo.order_manage}</td>
									<td style="line-height: 100px;">${vo.order_date}</td>
								</tr>
								</c:forEach>
							</tbody>
							
								
						</table>
					</div>
										
				</div>
			
			</div> <!-- contents -->
			<c:import url="../template/footer.jsp"></c:import>
		</div> <!-- container -->
	</div> <!-- main_right -->
</div> <!-- wrap -->

<script type="text/javascript">


	

</script>

</body>
</html>