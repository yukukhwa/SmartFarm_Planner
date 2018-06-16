<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listInsurancepay</title>
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
    				<form action="${pageContext.request.contextPath}/listInsurancepay" method="post">
		    			<select name="column">
		    				<option>작업명</option>
		    				<option>테마명</option>
		    			</select>
		    			<input type="text" name="property">
		    			<input type="hidden" name="ppWorkNumber" value="${ppWorkNumber}">
		    			<button>검색</button>
	    			</form>
    			</div>
    			<table class="table">
    				<thead>
    					<tr>
    						<th>예상보험비넘버</th>
    						<th>작업명</th>
    						<th>테마명</th>
    						<th>보험명</th>
    						<th>보험내용</th>
    						<th>보험가입일</th>
    						<th>보험만료일</th>
    						<th>보험가입기간</th>
    						<th>총보험비</th>
    						<th>예상보험비(월)</th>
    						<th>수정</th>
    						<th>삭제</th>
    					</tr>
    				</thead>
    				<tbody>
	    				<c:forEach items="${list}" var="woInsurancePay">
	    					<c:if test="${woInsurancePay.eInsurancepaySecret != 'false'}">
		    					<tr>
		    						<td>${woInsurancePay.eInsurancepayNumber}</td>
		    						<td>${woInsurancePay.ppWork.ppWorkName}</td>
		    						<td>${woInsurancePay.categoryTheme.themeName}</td>
		    						<td>${woInsurancePay.eInsurancepayMame}</td>
		    						<td>${woInsurancePay.eInsurancepayContent}</td>
		    						<td>${woInsurancePay.eInsurancepayStartday}</td>
		    						<td>${woInsurancePay.eInsurancepayEndday}</td>
		    						<td>${woInsurancePay.eInsurancepayTerm}</td>
		    						<td>${woInsurancePay.eInsurancepayTotalcost}</td>
		    						<td>${woInsurancePay.eInsurancepayExpectcost}</td>
		    						<td><a href="${pageContext.request.contextPath}/updateInsurancepay?eInsurancepayNumber=${woInsurancePay.eInsurancepayNumber}&ppNumber=${woInsurancePay.ppWork.productionPlan.ppNumber}">수정하기</a></td>
		    						<td><a href="${pageContext.request.contextPath}/deleteInsurancepay?eInsurancepayNumber=${woInsurancePay.eInsurancepayNumber}">삭제하기</a></td>
		    					</tr>
	    					</c:if>
	    				</c:forEach>
    				</tbody>
    			</table>
    			<a href="${pageContext.request.contextPath}/">예상보험비 수정화면으로 가기</a> <br>
    			<a href="${pageContext.request.contextPath}/">예상보험비 등록으로 가기</a> <br>
    			<a href="${pageContext.request.contextPath}/">예상보험비 리스트로 가기</a>
    	</section>
    </section>
</body>
</html>