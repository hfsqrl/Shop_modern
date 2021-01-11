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
									<th style="width: 10%; line-height: 25px;">주문일자<br>[주문번호]</th>
									<th style="width: 10%; line-height: 65px;">이미지</th>
									<th style="width: 40%; line-height: 65px;">상품정보</th>
									<th style="line-height: 65px;">수량</th>
									<th style="line-height: 65px;">상품구매금액</th>
									<th style="line-height: 65px;">주문처리상태</th>
									<th style="line-height: 65px;">취소/교환/반품</th>
								</tr>
							</thead>
							
							<tbody class="table-list">									
								<tr>
									<td>1</td>
									<td>2</td>
									<td>3</td>
									<td>4</td>
									<td>5</td>
									<td>6</td>
									<td>7</td>
								</tr>
								

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