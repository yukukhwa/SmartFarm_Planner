<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addWorkPlan</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addWorkPlan').click(function(){
			$('#addWorkPlanForm').submit();
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
    		<c:if test="${loginMember.level != 'farm'}">
    			<div>
    				해당페이지에 접근할 수 없는 권한입니다.
    			</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'farm'}">
	    		<div>
	    			<h3>계획서별 작업단계 등록</h3>
	    				<div>
	    					<label>
	    						작업단계 등록
	    					</label>
	    					<form id="addWorkPlanForm" method="post" action="${pageContext.request.contextPath}/addWorkPlan">
	    						<div>
	    							농가 통합 넘버 : <input type="hidden" name="fNumber" value="${loginMember.corpNumber}">
	    						</div>
	    						<div>
	    							<select name="ppNumber">
	    								<option value="" selected="selected" disabled="disabled">계획서 선택하기</option>
	    								<c:forEach var="productionPlan" items="${productionPlanList}">
	    									<option value="${productionPlan.ppNumber}">${productionPlan.ppNumber}</option>
	    								</c:forEach>
	    							</select>
	    						</div>
	    						<div>
	    							<label>
	    								작업명 : <input type="text" name="ppWorkName">
	    							</label>
	    						</div>
	    						<div>
	    							<label>
	    								작업시작일 : <input type="date" name="ppWorkStartday">
	    							</label>
	    						</div>
	    						<div>
	    							<label>
	    								작업완료일 : <input type="date" name="ppWorkEndday">
	    							</label>
	    						</div>
	    						<div>
	    							<label>
	    								작업면적 : <input type="number" name="ppWorkArea">
	    							</label>
	    						</div>
	    						<div>
	    							<label>
	    								작업상세내용 : <textarea rows="10" cols="80" name="ppWorkContent"></textarea>
	    							</label>
	    						</div>
	    						<button id="addWorkPlan">작업단계 등록하기</button>
	    					</form>
	    			</div>
	    		</div>
    		</c:if>
    	</section>
    </section>
</body>
</html>