<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listPlanner</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
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
    		<h3 class="page-header"><i class="icon_desktop"></i> 계획서 리스트</h3>
	    	<div class="row">
	    		<div class="col-lg-2"></div>
				<div class="col-lg-8">
		    		<table class="table table-striped table-advance table-hover">
		    			<thead>
		    				<tr>
		    					<th>계획서넘버</th>
		    					<th>계획명</th>
		    					<th>계획시작일</th>
		    					<th>계획종료일</th>
		    					<th>소유한면적</th>
		    					<th>임대한면적</th>
		    					<th>계획서등록일</th>
		    					<th>농가</th>
		    				</tr>
		    			</thead>
		    			<tbody>
		    				<c:forEach items="${list}" var="productionPlan">
		    					<c:if test="${productionPlan.ppSecret != 'false'}">
		    						<tr>
		    							<td>${productionPlan.ppNumber}</td>
		    							<td>
		    								<a href="${pageContext.request.contextPath}/onePlanner?ppNumber=${productionPlan.ppNumber}">${productionPlan.titlePlan.ppNamePlanname}</a>
		    							</td>
		    							<td>${productionPlan.ppStartday}</td>
		    							<td>${productionPlan.ppEndday}</td>
		    							<td>${productionPlan.ppOwnarea}</td>
		    							<td>${productionPlan.ppRentarea}</td>
		    							<td>${productionPlan.ppRecordday}</td>
		    							<td>${productionPlan.farmMember.farm.fName}</td>
		    						</tr>
		    					</c:if>
		    				</c:forEach>
		    			</tbody>
		    		</table>
		    		<div class="panel-body" style="margin-left: 10%;">
			    		<form action="${pageContext.request.contextPath}/listPlanner" method="post">
		    				<div class="col-lg-3">
			    				<select name="column" class="form-control m-bot15">
				    				<option>계획명</option>
				    				<option>농가명</option>
				    			</select>
		    				</div>
		    				<div class="col-lg-6">
		    					<input type="text" name="property" class="form-control">
		    				</div>
		    				<div class="col-lg-3">
		    					<button type="submit" class="btn btn-primary">검색</button>
		    				</div>
			    		</form>
		    		</div>
		    	</div>
		    	<div class="col-lg-2"></div>
			</div>
    	</section>
   	</section>
</body>
</html>