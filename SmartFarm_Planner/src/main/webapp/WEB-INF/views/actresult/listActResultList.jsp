<!-- [김기성] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listActResultList.jsp</title>
	<jsp:include page="/WEB-INF/views/css.jsp"></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$('#pagePerRow').val(${pagePerRow});
			$('#pagePerRow').change(function(){
				$(this).parents('form').submit();
			});
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
			/* var ajax = function(currentPage, pagePerRow, searchOption, searchKeyword, startDate, endDate){
				$.ajax({
					type: "GET",
					url: "${pageContext.request.contextPath}/actResultRest",
					data: {"currentPage":currentPage, "pagePerRow":pagePerRow, "searchOption":searchOption, "searchKeyword":searchKeyword, "startDate":startDate, "endDate":endDate},
					success: function(map){
						${actResultList} = map.actResultList;
						return;
					}
				});
			} */
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
			<div class="col-lg-10">
				<h3 class="page-header"><i class="icon_desktop"></i> 실행결과 리스트</h3>
				<form action="${pageContext.request.contextPath}/listSelectActResult"method="get">
					<input type="hidden" name="currentPage" value="${currentPage}">
					<input type="hidden" name="currentPage" value="${currentPage}">
					<input type="hidden" name="currentPage" value="${currentPage}">
					<input type="hidden" name="currentPage" value="${currentPage}">
					<div class="col-lg-4"></div>
					<div class="col-lg-4"></div>
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
							<th>농가명</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="actResultList" items="${actResultList}">
							<tr>
								<td>${actResultList.productionPlan.titlePlan.ppNamePlanname}</td>
								<td><a href="${pageContext.request.contextPath}/oneSelectActResult?ppResultlistNumber=${actResultList.ppResultlistNumber}">${actResultList.ppResultlistDate}</a></td>
								<td>${actResultList.farm.fName}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="panel-body">
					<form action="${pageContext.request.contextPath}/listSelectActResult"method="get">
						<input type="hidden" name="currentPage" value="${currentPage}">
						<input type="hidden" name="pagePerRow" value="${pagePerRow}">
						<div class="col-lg-2"></div>
						<div class="col-lg-2">
							<select name="searchOption" id="searchOption" class="form-control m-bot15">
								<option value="planName">계획명</option>
								<option value="date">기간별</option>
								<option value="farmName">농가명</option>
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
								<a href="${pageContext.request.contextPath}/listSelectActResult?currentPage=1&pagePerRow=${pagePerRow}">&laquo;</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/listSelectActResult?currentPage=${currentPage - 1}&pagePerRow=${pagePerRow}">&lsaquo;</a>
							</li>
						</c:if>
						<c:forEach var="i" items="${pageList}">
							<li>
								<a href="${pageContext.request.contextPath}/listSelectActResult?currentPage=${i}&pagePerRow=${pagePerRow}">${i}</a>
							</li>
						</c:forEach>
						<c:if test="${currentPage < totalPage}">
							<li>
								<a href="${pageContext.request.contextPath}/listSelectActResult?currentPage=${currentPage + 1}&pagePerRow=${pagePerRow}">&rsaquo;</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/listSelectActResult?currentPage=${totalPage}&pagePerRow=${pagePerRow}">&raquo;</a>
							</li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</section>
</section>
</body>
</html>
