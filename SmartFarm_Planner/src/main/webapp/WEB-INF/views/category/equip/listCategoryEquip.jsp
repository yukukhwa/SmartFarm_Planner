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
   			<table>
   				<thead>
   					<tr>
   						<th>
   							장비종류넘버
   						</th>
   						<th>
   							장비명
   						</th>
   						<th>
   							등록기관
   						</th>
   					</tr>
   				</thead>
   				<tbody>
   					<c:forEach var="categoryEquip" items="${list}">
   						<tr>
   							<td>
   								${categoryEquip.equipNumber}
   							</td>
   							<td>
   								${categoryEquip.equipName}
   							</td>
   							<td>
   								${categoryEquip.agency.aName}
   							</td>
   							<c:if test="${loginMember.corpName == categoryEquip.agency.aName}">
    							<td>
    								<a href="${pageContext.request.contextPath}/updateCategoryEquip?equipNumber=${categoryEquip.equipNumber}">수정</a>
    							</td>
    							<td>
    								<a href="${pageContext.request.contextPath}/deleteCategoryEquip?equipNumber=${categoryEquip.equipNumber}">삭제</a>
    							</td>
    								
    						</c:if>	
   						</tr>
   					</c:forEach>
   				</tbody>
   			</table>
   			<c:if test="${loginMember.level == 'agency'}">
   				<a href="${pageContext.request.contextPath}/addCategoryEquip">장비종류 카테고리 등록하기</a>
   			</c:if>
    	</section>
    </section>	
</body>
</html>s