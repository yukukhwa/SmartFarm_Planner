<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listAllWrEtcSpendPay</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>기타지출비결과 리스트 화면</h3>	
				<table border="1">
					<thead>
					<tr>
						<th>기타지출비결과넘버</th>
						<th>기타지출비결과 비용</th>
						<th>기타지출비결과 등록일</th>
						<th>작업단계 결과 넘버</th>
						<th>작업단계결과 총 작업면적</th>
						<th>작업단계결과 이미작업한면적</th>
						<th>예상기타지출비넘버</th>
						<th>지출상세내용</th>
						<th>예상기타지출일</th>
						<th>예상기타지출비</th>
						<th>공개/비공개 여부</th>
						<th>기타지출비용카테넘버</th>
						<th>기타지출비용명</th>
					</tr>					
					</thead>
					<tbody>
						<c:forEach var="wrEtcSpendPayList" items="${wrEtcSpendPayList}">
							<tr>
							<td>${wrEtcSpendPayList.wrEtcspendpayNumber }</td>
							<td>${wrEtcSpendPayList.wrEtcspendpayRealcost }</td>
							<td>${wrEtcSpendPayList.wrEtcspendpayDate }</td>
							<td>${wrEtcSpendPayList.ppWoResult.wrNumber }</td>
							<td>${wrEtcSpendPayList.ppWoResult.wrTotalarea }</td>
							<td>${wrEtcSpendPayList.ppWoResult.wrReworkarea }</td>
							<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpayNumber }</td>
							<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpayContent }</td>
							<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpayDay }</td>
							<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpayCost }</td>
							<td>${wrEtcSpendPayList.woEtcSpendPay.eEtcspendpaySecret }</td>
							<td>${wrEtcSpendPayList.woEtcSpendPay.categoryEtcSpendPay.etcspendpayNumber }</td>
							<td>${wrEtcSpendPayList.woEtcSpendPay.categoryEtcSpendPay.etcspendpayName }</td>
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