<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listWrInsurancePay</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>보험비결과 리스트 화면</h3>	
				<table border="1">
					<thead>
					<tr>
						<th>보험비결과넘버</th>
						<th>작업단계결과 넘버</th>
						<th>총작업면적</th>
						<th>이미작업한면적</th>
						<th>보험명</th>
						<th>보험명</th>
						<th>보험내용(텍스트타입-100자이상)</th>
						<th>보험가입일</th>
						<th>보험만료일</th>
						<th>보험가입기간</th>
						<th>총보험비</th>
						<th>예상보험비(월)</th>
						<th>공개/비공개 여부</th>
						<th>납부한보험비</th>
						<th>납부일</th>	
					</tr>					
					</thead>
					<tbody>
						<c:forEach var="wrInsurancePayList" items="${wrInsurancePayList}">
							<tr>
							<td>${wrInsurancePayList.wrInsurancepayNumber }</td>
							<td>${wrInsurancePayList.ppWoResult.wrNumber}</td>
							<td>${wrInsurancePayList.ppWoResult.wrTotalarea}</td>
							<td>${wrInsurancePayList.ppWoResult.wrReworkarea}</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepayNumber }</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepayMame }</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepayContent }</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepayStartday }</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepayEndday }</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepayTerm }</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepayTotalcost }</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepayExpectcost }</td>
							<td>${wrInsurancePayList.woInsurancePay.eInsurancepaySecret }</td>
							<td>${wrInsurancePayList.wrInsurancepayMonthcost }</td>
							<td>${wrInsurancePayList.wrInsurancepayDate }</td>
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