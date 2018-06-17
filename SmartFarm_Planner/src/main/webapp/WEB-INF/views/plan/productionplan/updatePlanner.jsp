<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updatePlanner</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#ppNameNumber').val(${productionPlan.titlePlan.ppNameNumber});
		$('input:radio[value="'+${productionPlan.ppSecret}+'"]').prop('checked', true);
	});
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
    		<h1>계획서를 수정해주세요.</h1>
    		<form action="${pageContext.request.contextPath}/updatePlanner" method="post">
    			<input type="hidden" name="ppNumber" id="ppNumber" value="${productionPlan.ppNumber}">
   				계획명 : 
   				<select name="titlePlan.ppNameNumber" id="ppNameNumber">
   					<c:forEach items="${titleList}" var="title">
   						<option value="${title.ppNameNumber}">${title.ppNamePlanname}</option>
   					</c:forEach>
   				</select>
    			<div>
    				계획 기간 : <input type="date" name="ppStartday" id="ppStartday" value="${productionPlan.ppStartday}"> ~ <input type="date" name="ppEndday" id="ppEndday" value="${productionPlan.ppEndday}">
    			</div>
    			<div>
    				소유면적 : <input type="number" name="ppOwnarea" id="ppOwnarea" value="${productionPlan.ppOwnarea}">
    			</div>
    			<div>
    				임대면적 : <input type="number" name="ppRentarea" id="ppRentarea" value="${productionPlan.ppRentarea}">
    			</div>
    			<div>
    				공개여부 : <input type="radio" value="true" name="ppSecret">공개 <input type="radio" value="false" name="ppSecret">비공개
    			</div>
    			<div>
    				<div>
    					+ 작업단계 수정 화면
    				</div>
    			</div>
    			<button type="submit">수정</button>
    		</form>
    	</section>
   	</section>
</body>
</html>