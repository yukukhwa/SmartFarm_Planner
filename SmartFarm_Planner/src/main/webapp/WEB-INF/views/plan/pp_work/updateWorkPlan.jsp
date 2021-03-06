<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateWorkPlan</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#updateWorkPlan').click(function(){
			$('#updateWorkPlanForm').submit();
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
    		<div>
    			<h3>작업단계 수정화면</h3>
    			<div>
    				<form id="updateWorkPlanForm" method="post" action="${pageContext.request.contextPath}/updateWorkPlan">
    					<div>
    						<input type="text" name="ppWorkNumber" value="${ppWorkNumber}">
    						<input type="text" name="farm.fNumber" value="${loginMember.corpNumber}">
    					</div>
    					<div>
    						계획서넘버 :
    						<select name="productionPlan.ppNumber">
    							<c:forEach var="productionPlan" items="${productionPlanList}">
    								<option value="${productionPlan.ppNumber}">${productionPlan.ppNumber}</option>
    							</c:forEach>
    						</select>
    					</div>
    					<div>
    						<label> 
    							작업단계 명 : <input type="text" name="ppWorkName" value="${ppWork.ppWorkName}">
    						</label>
    					</div>
    					<div>
    						<label> 
    							작업날짜 : <input type="date" name="ppWorkStartday" value="${ppWork.ppWorkStartday}"> ~ <input type="date" name="ppWorkEndday" value="${ppWork.ppWorkEndday}">
    						</label>
    					</div>
    					<div>
    						<label> 
    							작업면적 : <input type="number" name="ppWorkArea" value="${ppWork.ppWorkArea}">
    						</label>
    					</div>
    					<div>
    						<label> 
    							작업상세내용  : <input type="text" name="ppWorkContent" value="${ppWork.ppWorkContent}">
    						</label>
    					</div>
    					<button id="updateWorkPlan">작업단계 수정하기</button>
    				</form>
    			
    			</div>
    			
    		</div>
    		
    			<a href="${pageContext.request.contextPath}/listWorkPlan">작업단계 리스트로 가기</a>
    	</section>
    </section>
</body>
</html>