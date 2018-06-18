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
						<th>예상보험비넘버</th>
						<th>납부한보험비</th>
						<th>납부일</th>	
					</tr>					
					</thead>
					<tbody>
						<c:forEach var="list" items="${list}">
							<tr>
							<td>${list.wrInsurancepayNumber }</td>
							<td>${list.ppWoResult.wrNumber}</td>
							<td>${list.woInsurancePay.eInsurancepayNumber }</td>
							<td>${list.wrInsurancepayMonthcost }</td>
							<td>${list.wrInsurancepayDate }</td>
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