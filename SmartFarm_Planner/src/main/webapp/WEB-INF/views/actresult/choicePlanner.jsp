<!-- [김기성] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>choicePlanner.jsp</title>
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
				<h3 class="page-header"><i class="icon_desktop"></i> 실행결과등록</h3>
				<table class="table table-striped table-advance table-hover">
					<thead>
						<tr>
							<th>계획명</th>
							<th>생산계획 시작일</th>
							<th>생산계획 완료일</th>
							<th>소유한면적</th>
							<th>임대한면적</th>
							<th>작성일자</th>
							<th>작성한 아이디</th>
							<th>등록</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="plannerList" items="${plannerList}">
							<tr>
								<td>${plannerList.titlePlan.ppNamePlanname}</td>
								<td>${plannerList.ppStartday}</td>
								<td>${plannerList.ppEndday}</td>
								<td>${plannerList.ppOwnarea}</td>
								<td>${plannerList.ppRentarea}</td>
								<td>${plannerList.ppRecordday}</td>
								<td>${plannerList.farmMember.fMemberId}</td>
								<td><a href="${pageContext.request.contextPath}/insertActResult?ppNumber=${plannerList.ppNumber}">등록</a></td>
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