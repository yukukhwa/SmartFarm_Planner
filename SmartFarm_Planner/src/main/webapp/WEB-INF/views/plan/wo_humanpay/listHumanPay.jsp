<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listHumanPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#searchHumanPay').click(function(){
			$('#searchHumanPayForm').submit();
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
    			<h3>예상 인건비 리스트</h3>
    			<form id="searchHumanPayForm" method="post" action="${pageContext.request.contextPath}/listHumanPay">
    				<select name="searchHumanPayOption" id="searchHumanPayOption">
    					<option value="eHumanpayName">작업인부이름</option>
    					<option value="eHumanpayResidentnumber">주민번호</option>
    				</select>
    				<input type="hidden" name="ppWorkNumber" value="${ppWorkNumber}">
    				<input type="text" name="searchKeyword">
    				<button id="searchHumanPay">인건비 검색</button>
    			</form>
    			<table class="table">
    				<thead>
    					<tr>
    						<th>예상인건비넘버</th>
    						<th>작업단계명</th>
    						<th>테마 카테고리명</th>
    						<th>인부이름</th>
    						<th>주민번호</th>
    						<th>예상인건비</th>
    						<th>예상작업일</th>
    					</tr>
    				</thead>
    				<c:forEach var="woHumanPay" items="${list}">
						<c:if test="${woHumanPay.eHumanpaySecret != 'false'}">
							<tbody>
		    					<tr>
		    						
		    						<td>${woHumanPay.eHumanpayNumber}</td>
		    						<td>${woHumanPay.ppWork.ppWorkName}</td>
		    						<td>${woHumanPay.categoryTheme.themeName}</td>
		    						<td>${woHumanPay.eHumanpayName}</td>
		    						<td>${woHumanPay.eHumanpayResidentnumber}</td>
		    						<td>${woHumanPay.eHumanpayExpectpay}</td>
		    						<td>${woHumanPay.eHumanpayExpectday}</td>
		    						<td>
		    							<a href="${pageContext.request.contextPath}/updateHumanPay?eHumanpayNumber=${woHumanPay.eHumanpayNumber}&ppNumber=${woHumanPay.ppWork.productionPlan.ppNumber}">수정</a>
		    						</td>
		    						<td>
		    							<a href="${pageContext.request.contextPath}/deleteWoHumanPay?eHumanpayNumber=${woHumanPay.eHumanpayNumber}">삭제</a>
		    						</td>
		    					</tr>
	    					</tbody>
	    				</c:if>
					</c:forEach>
    			</table>
	    		<div>
	    		<a href="${pageContext.request.contextPath}/updateHumanPay">예상인건비 수정화면으로 가기</a> <br>
	    		<a href="${pageContext.request.contextPath}/listMaterialsPay">예상 원자재비 리스트로 가기</a> <br>
	    		<a href="${pageContext.request.contextPath}/addHumanPay">예상 인건비 등록으로 가기</a> <br>
	    		<a href="${pageContext.request.contextPath}/listWorkPlan">작업단계 리스트로 가기</a>
	    		</div>	
	    	</div>
    	
    	</section>
	</section>
</body>
</html>