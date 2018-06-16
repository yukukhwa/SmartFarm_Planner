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
    		<form action="${pageContext.request.contextPath}/listPlanner" method="post">
    			<select name="column">
    				<option>계획명</option>
    				<option>작성자</option>
    			</select>
    			<input type="text" name="property">
    			<button type="submit">검색</button>
    		</form>
    		<table>
    			<thead>
    				<tr>
    					<th>계획서넘버</th>
    					<th>계획명</th>
    					<th>계획시작일</th>
    					<th>계획종료일</th>
    					<th>소유한면적</th>
    					<th>임대한면적</th>
    					<th>계획서등록일</th>
    					<th>작성자</th>
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
    							<td>${productionPlan.farmMember.fMemberName}</td>
    						</tr>
    					</c:if>
    				</c:forEach>
    			</tbody>
    		</table>
    	</section>
   	</section>
</body>
</html>