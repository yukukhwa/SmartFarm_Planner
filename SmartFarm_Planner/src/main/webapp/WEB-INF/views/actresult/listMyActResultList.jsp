<!-- [김기성] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listMyActResultList.jsp</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			/* 한줄에 몇개 씩 볼건지 결정하는 pagePerRow를 값을 받아서 option value를 선택하기 위한 코드
			선택한 pagePerRow를 화면에 보이게 할 수 있고, 값도 넘길 수 있다. */
			$('#pagePerRow').val(${pagePerRow});
			/* 몇줄씩 보기를 변경한다면 그 form을 submit한다. */
			$('#pagePerRow').change(function(){
				$(this).parents('form').submit();
			});
			/* 검색옵션을 변경하면 날짜일때는 input type을 date로 변경하고, 이름을 startDate로 변경, hidden으로 되어있는 endDate를 나타나게하고 크기를 변경한다.
			계획명이나 농가명일때는 input type을 text로 변경하고, 이름을 searchKeyword로 변경, endDate를 hidden type으로 변경하고 크기도 변경한다. */
			$('#searchOption').change(function(){
				if($(this).val() == 'date') {
					$('#searchKeyword').prop('type', 'date');
					$('#searchKeyword').attr('name', 'startDate');
					$('#searchKeyword').parent('div').attr('class', 'col-lg-2');
					$('#endDate').prop('type', 'date');
					$('#endDate').parent('div').attr('class', 'col-lg-2');
				} else if($(this).val() == 'planName' || $(this).val() == 'farmName') {
					$('#searchKeyword').prop('type', 'text');
					$('#searchKeyword').attr('name', 'searchKeyword');
					$('#searchKeyword').parent('div').attr('class', 'col-lg-4');
					$('#endDate').prop('type', 'hidden');
					$('#endDate').parent('div').attr('class', 'col-lg-0');
				}
			});
		});
	</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<!--overview start-->
		<div class="col">
			<h3 class="page-header"><i class="icon_desktop"></i> 실행결과 리스트</h3>
			<div class="col-lg-1"></div>
			<div class="col-lg-10">
				<form action="${pageContext.request.contextPath}/listMyActResultList"method="get">
					<!-- 검색값과 현재페이지를 유지하기 위해 hidden으로 값을 다시 보낸다. -->
					<input type="hidden" name="currentPage" value="${currentPage}">
					<input type="hidden" name="searchOption" value="${searchOption}">
					<input type="hidden" name="searchKeyword" value="${searchKeyword}">
					<input type="hidden" name="startDate" value="${startDate}">
					<input type="hidden" name="endDate" value="${endDate}">
					<div class="col-lg-10"></div>
					<div class="col-lg-2">
						<select name="pagePerRow" id="pagePerRow" class="form-control m-bot15">
							<option value="3">3개씩 보기</option>
							<option value="5">5개씩 보기</option>
							<option value="10">10개씩 보기</option>
							<option value="20">20개씩 보기</option>
						</select>
					</div>
				</form>
				<table class="table table-striped table-advance table-hover">
					<thead>
						<tr>
							<th>계획명</th>
							<th>실행결과리스트 작성일</th>
							<th>작성자(아이디)</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="actResultList" items="${actResultList}">
							<tr>
								<td>${actResultList.productionPlan.titlePlan.ppNamePlanname}</td>
								<td><a href="${pageContext.request.contextPath}/oneActResultList?ppResultlistNumber=${actResultList.ppResultlistNumber}">${actResultList.ppResultlistDate}</a></td>
								<td>${actResultList.farmMember.fMemberName}(${actResultList.farmMember.fMemberId})</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="panel-body">
					<form action="${pageContext.request.contextPath}/listMyActResultList"method="get">
						<!-- 검색할때 현재페이지는 1로 변경하고, pagePerRow는 hidden으로 값을 숨겨 그대로 유지한다. -->
						<input type="hidden" name="currentPage" value="1">
						<input type="hidden" name="pagePerRow" value="${pagePerRow}">
						<div class="col-lg-2"></div>
						<div class="col-lg-2">
							<select name="searchOption" id="searchOption" class="form-control m-bot15">
								<option value="planName">계획명</option>
								<option value="date">기간별</option>
								<option value="memberId">회원아이디</option>
							</select>
						</div>
						<div class="col-lg-4">
							<input type="text" class="form-control" name="searchKeyword" id="searchKeyword">
						</div>
						<div class="col-lg-0">
							<input type="hidden" class="form-control" name="endDate" id="endDate">
						</div>
						<div class="col-lg-2">
							<button type="submit" class="btn btn-primary">검색</button>
						</div>
					</form>
				</div>
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${currentPage > 1}">
							<li>
								<a href="${pageContext.request.contextPath}/listMyActResultList?currentPage=1&pagePerRow=${pagePerRow}&searchOption=${searchOption}&searchKeyword=${searchKeyword}&startDate=${startDate}&endDate=${endDate}">&laquo;</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/listMyActResultList?currentPage=${currentPage - 1}&pagePerRow=${pagePerRow}&searchOption=${searchOption}&searchKeyword=${searchKeyword}&startDate=${startDate}&endDate=${endDate}">&lsaquo;</a>
							</li>
						</c:if>
						<c:forEach var="i" items="${pageList}">
							<li>
								<a href="${pageContext.request.contextPath}/listMyActResultList?currentPage=${i}&pagePerRow=${pagePerRow}&searchOption=${searchOption}&searchKeyword=${searchKeyword}&startDate=${startDate}&endDate=${endDate}">${i}</a>
							</li>
						</c:forEach>
						<c:if test="${currentPage < totalPage}">
							<li>
								<a href="${pageContext.request.contextPath}/listMyActResultList?currentPage=${currentPage + 1}&pagePerRow=${pagePerRow}&searchOption=${searchOption}&searchKeyword=${searchKeyword}&startDate=${startDate}&endDate=${endDate}">&rsaquo;</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/listMyActResultList?currentPage=${totalPage}&pagePerRow=${pagePerRow}&searchOption=${searchOption}&searchKeyword=${searchKeyword}&startDate=${startDate}&endDate=${endDate}">&raquo;</a>
							</li>
						</c:if>
					</ul>
				</div>
			</div>
			<div class="col-lg-1"></div>
		</div>
	</section>
</section>
</body>
</html>
