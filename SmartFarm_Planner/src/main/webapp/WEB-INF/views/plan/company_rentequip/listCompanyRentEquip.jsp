<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listCompanyRentEquip</title>
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
    		<h3>대여가능장비리스트</h3>
    		<div>
    			<form action="${pageContext.request.contextPath}/listCompanyRentEquip" method="post">
    				<select name="column">
    					<option>업체명</option>
    					<option>장비명</option>
    					<option>모델명</option>
    				</select>
    				<input type="text" name="property">
    				<input type="hidden" name="companyRentEquip.company.cNumber" value="${companyRentEquip.company.cNumber}">
    				<button>검색</button>
    			</form>
    		</div>
    		<table class="table">
    			<thead>
    				<tr>
    					<th>대여가능장비넘버</th>
    					<th>업체명</th>
    					<th>장비명</th>
    					<th>대당사용료</th>
    					<th>단위시간</th>
    					<th>모델명</th>
    					<th>등록날짜</th>
    					<th>수정</th>
    					<th>삭제</th>
    				</tr>
    			</thead>
    			<tbody>
    				<c:forEach var="companyRentEquip" items="${list}">
    					<tr>
    						<td>${companyRentEquip.cRentNumber}</td>
    						<td>${companyRentEquip.company.cName}</td>
    						<td>${companyRentEquip.categoryEquip.equipName}</td>
    						<td>${companyRentEquip.cRentCost}</td>
    						<td>${companyRentEquip.cRentDate}</td>
    						<td>${companyRentEquip.cRentModelname}</td>
    						<td>${companyRentEquip.cRentRegistdate}</td>
    						<c:if test="${loginMember.corpName == companyRentEquip.company.cName}">
	    						<td>
	    							<a href="${pageContext.request.contextPath}/updateCompanyRentEquip?cRentNumber=${companyRentEquip.cRentNumber}">수정</a>
	    						</td>
	    						<td>
	    							<a href="${pageContext.request.contextPath}/deleteCompanyRentEquip?cRentNumber=${companyRentEquip.cRentNumber}">삭제</a>
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