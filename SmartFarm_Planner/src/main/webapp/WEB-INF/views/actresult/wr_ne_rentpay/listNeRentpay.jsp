<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listNeRentpay</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>대여비결과 리스트 화면</h3>	
				<table border="1">
					<thead>
					<tr>
						<th>대여비결과넘버</th>
						<th>예상대여비넘버</th>
						<th>필요장비결과넘버</th>
						<th>대여비</th>
						<th>대여비지불일</th>	
						<th>실행할때보유상태</th>						
					</tr>					
					</thead>
					<tbody>
						<c:forEach var="list" items="${list}">
							<tr>
							<td>${list.neRentpayNumber }</td>
							<td>${list.wrNeedEquip.wrNeedequipNumber}</td>
							<td>${list.woNeRentPay.neERentpayNumber }</td>
							<td>${list.neRentpayCost }</td>
							<td>${list.neRentpayDate }</td>
							<td>${list.wrNeedEquip.wrNeedequipState }</td>
							</tr>
						</c:forEach>
					</tbody>				
				</table>
			</div>
		</div>
	</section>
</section>

</body>
</html>