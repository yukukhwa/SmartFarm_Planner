<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listCategoryEquip</title>
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
    		<c:if test="${loginMember.level == 'agency'}">
    			<table>
    				<thead>
    					<tr>
    						<td>
    							장비종류넘버
    						</td>
    						<td>
    							장비명
    						</td>
    						<td>
    							등록기관
    						</td>
    					</tr>
    				</thead>
    				<tbody>
    					<c:forEach var="categoryEquipDb" items="${list}">
    						<tr>
    							<td>
    								${categoryEquipDb.equipNumber}
    							</td>
    							<td>
    								${categoryEquipDb.equipName}
    							</td>
    							<td>
    								<a href="${pageContext.request.contextPath}/oneAgency?aName=${categoryEquipDb.agencyDb.aName}">${categoryEquipDb.agencyDb.aName}</a>
    							</td>
    							<c:if test="${loginMember.corpName == categoryEquipDb.agencyDb.aName}">
	    							<td>
	    								<a href="${pageContext.request.contextPath}/updateCategoryEquip?equipNumber=${categoryEquipDb.equipNumber}">수정</a>
	    							</td>
	    							<td>
	    								<a href="${pageContext.request.contextPath}/deleteCategoryEquip?equipNumber=${categoryEquipDb.equipNumber}">삭제</a>
	    							</td>
	    						</c:if>	
    						</tr>
    					</c:forEach>
    				</tbody>
    			</table>
    		</c:if>
    	</section>
    </section>	
</body>
</html>