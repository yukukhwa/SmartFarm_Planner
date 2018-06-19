<!-- [유국화] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addWorkResult</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header"><i class="fa fa-laptop"></i>실행결과리스트별 작업단계 등록 화면</h3>	
				<table border="1">
					<thead>
					<tr>
						<th>작업단계결과넘버</th>
						<th>실행결과리스트넘버</th>
						<th>실행결과리스트작성일</th>	
						<th>예상작업단계넘버</th>						
						<th>작업명</th>
						<th>작업시작일</th>	
						<th>작업완료일</th>	
						<th>작업면적</th>	
						<th>작업내용(상세)</th>	
						<th>총작업면적</th>	
						<th>이미작업한면적</th>												
					</tr>					
					</thead>
					<tbody>
						<c:forEach var="workResultList" items="${workResultList}">
							<tr>
							<td>${workResultList.wrNumber }</td>
							<td>${workResultList.actResult.ppResultlistNumber}</td>
							<td>${workResultList.actResult.ppResultlistDate }</td>
							<td>${workResultList.ppWork.ppWorkNumber }</td>
							<td>${workResultList.ppWork.ppWorkName }</td>
							<td>${workResultList.ppWork.ppWorkStartday }</td>
							<td>${workResultList.ppWork.ppWorkEndday }</td>							
							<td>${workResultList.ppWork.ppWorkArea }</td>
							<td>${workResultList.ppWork.ppWorkContent }</td>
							<td>${workResultList.wrReworkarea }</td>
							<td>${workResultList.wrTotalarea }</td>
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