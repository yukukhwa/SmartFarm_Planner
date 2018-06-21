<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listWoNeedEquip</title>
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
    		<div>
    				<form action="${pageContext.request.contextPath}/listWoNeedEquip" method="post">
		    			<select name="column">
		    				<option>작업명</option>
		    				<option>장비명</option>
		    			</select>
		    			<input type="text" name="property">
		    			<input type="hidden" name="ppWorkNumber" value="${ppWorkNumber}">
		    			<button>검색</button>
	    			</form>
    			</div>
    			<table>
    				<thead>
    					<tr>
    						<th>예상필요장비넘버</th>
    						<th>작업명</th>
    						<th>장비명</th>
    						<th>보유상태</th>
    						<th>수정</th>
    						<th>삭제</th>
    					</tr>
    				</thead>
    				<tbody>
    				<c:forEach var="woNeedEquip" items="${list}">
    					<tr>
    						<td>${woNeedEquip.eNeedequipNumber}</td>
    						<td>${woNeedEquip.ppWork.ppWorkName}</td>
    						<td>${woNeedEquip.categoryEquip.equipName}</td>
    						<td>${woNeedEquip.eNeedequipState}</td>
    						<td>
    							<a href="#">수정</a>
    						</td>
    						<td>
    							<a href="#">삭제</a>
    						</td>
    					</tr>
    				</c:forEach>
    				</tbody>
    			</table>
    	</section>
    </section>
</body>
</html>