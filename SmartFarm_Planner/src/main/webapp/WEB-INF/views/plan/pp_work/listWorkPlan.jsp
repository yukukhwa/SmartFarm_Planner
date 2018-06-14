<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listWorkPlan</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#workPlanSearch').click(function(){
			$('#workPlanSearchForm').submit();
		})
	})
</script>
</head>
<body>
	<!-- container section start -->
	<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
    <!--sidebar start-->
    <jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
    <!--sidebar end-->
     <!--main content start-->
    <section id="main-content">
    	<section class="wrapper">
    		<h3>계획서별 작업단계 리스트</h3>
    			<div>
    				<form id="workPlanSearchForm" action="${pageContext.request.contextPath}/listWorkPlan" method="post">
		    			<select name="searchWorkPlanOption">
		    				<option value="ppWorkName">작업명</option>
		    				<option value="ppWorkContent">작업 상세내용</option>
		    			</select>
		    			<input type="text" name="searchKeyword">
		    			<input type="hidden" name="ppNumber" value="${ppNumber}">
		    			<button id="workPlanSearch">작업단계 검색</button>
	    			</form>
    			</div>
    			<table class="table">
    				<thead>
    					<tr>
    						<th>계획서코드</th>
    						<th>농가명</th>
    						<th>작업명</th>
    						<th>작업시작일</th>
    						<th>작업완료일</th>
    						<th>작업상세내용</th>
    						<th>작업면적</th>
    					</tr>
    				</thead>
    				<c:forEach items="${list}" var="ppWorkDb">
    				<tbody>
    					<tr>
    						<td>${ppWorkDb.productionPlanDb.ppNumber}</td>
    						<td>${ppWorkDb.farmDb.fName}</td>
    						<td>${ppWorkDb.ppWorkName}</td>
    						<td>${ppWorkDb.ppWorkStartday}</td>
    						<td>${ppWorkDb.ppWorkEndday}</td>
    						<td>${ppWorkDb.ppWorkContent}</td>
    						<td>${ppWorkDb.ppWorkArea}</td>
    					</tr>
    				</tbody>
    				</c:forEach>
    			</table>
    			<a href="${pageContext.request.contextPath}/updateWorkPlan">작업단계 수정화면으로 가기</a> <br>
    			<a href="${pageContext.request.contextPath}/addWorkPlan">작업단계 등록으로 가기</a> <br>
    			<a href="${pageContext.request.contextPath}/listHumanPay">예상 인건비 리스트로 가기</a> <br>
    			<a href="${pageContext.request.contextPath}/listMaterialsPay">예상원자재비 리스트로 가기</a> 
    	</section>
    </section>
</body>
</html>