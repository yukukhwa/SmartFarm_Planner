<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>askWorkResult</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>

<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>실행결과리스트별 작업단계 조회 화면</h3>	
				<table border="1">
					<thead>
					<tr>
						<th>실행결과리스트별 작업단계 결과 넘버</th>
						<th>실행결과리스트 넘버</th>
						<th>실행결과리스트별 작업단계넘버</th>
						<th>실행결과 작업 총 면적</th>
						<th>실행결과 다시 작업한 면적</th>	
					</tr>					
					</thead>
					<tbody>
						<c:forEach var="list" items="${list}">
							<tr>
							<td>${list.wrNumber }</td>
							<td>${list.ppResultlistNumber}</td>
							<td>${list.ppWorkNumber }</td>
							<td>${list.wrTotalarea }</td>
							<td>${list.wrReworkarea }</td>
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