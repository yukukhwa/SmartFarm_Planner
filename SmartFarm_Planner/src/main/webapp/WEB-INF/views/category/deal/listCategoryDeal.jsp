<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listCategoryDeal</title>
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
    		<table>
    			<thead>
    				<tr>
    					<th>
    						거래처 넘버	
    					</th>
    					<th>
    						거래처분류
    					</th>
    					<th>
    						등록기관
    					</th>
    				</tr>
    			</thead>
    			<tbody>
    				<c:forEach items="${list}" var="categoryDeal">
    					<tr>
    						<td>
    							${categoryDeal.dealNumber}
    						</td>
    						<td>
    							${categoryDeal.dealClassification}
    						</td>
    						<td>
    							<a href="${pageContext.request.contextPath}/oneAgency?aName=${categoryDeal.agency.aName}">${categoryDeal.agency.aName}</a>
    						</td>	
    						<c:if test="${loginMember.corpName == categoryDeal.agency.aName}">
    							<td>
    								<a href="${pageContext.request.contextPath}/updateCategoryDeal?dealNumber=${categoryDeal.dealNumber}">수정</a>
    							</td>
    							<td>
    								<a href="${pageContext.request.contextPath}/deleteCategoryDeal?dealNumber=${categoryDeal.dealNumber}">삭제</a>
    							</td>
    						</c:if>		
    					</tr>
    				</c:forEach>
    			</tbody>
    		</table>
    	</section>
    </section>
</body>
</html>