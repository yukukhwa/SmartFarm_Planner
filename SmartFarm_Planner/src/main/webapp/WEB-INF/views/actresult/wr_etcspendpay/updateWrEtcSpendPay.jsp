<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>updateWrEtcSpendPay</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>기타지출비결과 수정 화면</h3>	
				<form action="${pageContext.request.contextPath }/updateWrEtcSpendPay" method="post">
					<table border="1">
						<thead>
						<tr>
							<th>기타지출비결과넘버(6번으로 픽스)</th>
							<th>작업단계결과 넘버</th>
							<th>예상 기타지출비용 넘버</th>
							<th>작업단계결과별 실제 기타지출비</th>
							<th>작업단계별 기타지출비 등록일</th>	
						</tr>					
						</thead>
						<tbody>						
							<tr>
								<td><input type="text" name="wrEtcspendpayNumber" value="${wrEtcSpendPayDb.wrEtcspendpayNumber }" disabled></td>
								<td><input type="text" name="wrNumber" value="${wrEtcSpendPayDb.wrNumber}" disabled></td>
								<td><input type="text" name="eEtcspendpayNumber" value="${wrEtcSpendPayDb.eEtcspendpayNumber }" disabled></td>
								<td><input type="text" name="wrEtcspendpayRealcost" value="${wrEtcSpendPayDb.wrEtcspendpayRealcost }"></td>
								<td><input type="text" name="wrEtcspendpayDate" value="${wrEtcSpendPayDb.wrEtcspendpayDate }"></td>
							</tr>						
						</tbody>				
					</table>
					<button type="submit">수정완료</button>
				</form>
				
			</div>
		</div>
	</section>
</section>

</body>
</html>