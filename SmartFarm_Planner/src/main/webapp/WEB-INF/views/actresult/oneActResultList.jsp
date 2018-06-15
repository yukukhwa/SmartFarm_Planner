<!-- [김기성] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>oneActResultList.jsp</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<!--overview start-->
		<div class="col">
			<div class="col-lg-10">
				<h3 class="page-header"><i class="icon_desktop"></i> 실행결과 리스트</h3>
				선택한 농가의 실행결과 전체를 보여주는 화면입니다.
				<table class="table table-striped table-advance table-hover">
					<thead>
						<tr>
							<th>실행결과리스트 넘버</th>
							<th>실행결과리스트 작성일</th>
							<th>실행결과리스트 아이디</th>
							<th>실행결과리스트 계획명</th>
							<th>실행결과리스트 농가넘버</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="actResultList" items="${actResultList}">
							<tr>
								<td>${actResultList.ppResultlistNumber}</td>
								<td>${actResultList.ppResultlistDate}</td>
								<td>${actResultList.farmMember.fMemberId}</td>
								<td>${actResultList.productionPlan.titlePlan.ppNamePlanname}</td>
								<td>${actResultList.farm.fNumber}</td>
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