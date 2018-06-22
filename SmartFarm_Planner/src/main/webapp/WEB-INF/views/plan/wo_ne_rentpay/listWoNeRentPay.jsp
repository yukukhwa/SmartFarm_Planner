<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listWoNeRentPay</title>
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
    		<h3>필요장비별 예상대여비 리스트</h3>
    		<div>
    				<form action="${pageContext.request.contextPath}/listWoNeRentPay" method="post">
		    			<select name="column">
		    				<option>테마명</option>
		    				<option>보유상태</option>
		    			</select>
		    			<input type="text" name="property">
		    			<input type="hidden" name="eNeedequipNumber" value="${eNeedequipNumber}">
		    			<button>검색</button>
	    			</form>
    			</div>
    			<table>
    				<thead>
    					<tr>
    						<th>예상대여비넘버</th>
    						<th>필요장비보유상태</th>
    						<th>테마명</th>
    						<th>모델명</th>
    						<th>대당대여비</th>
    						<th>단위기간</th>
    						<th>수정</th>
    						<th>삭제</th>
    					</tr>
    				</thead>
    				<tbody>
    					<c:forEach var="woNeRentPay" items="${list}" >
		    					<tr>
		    						<td>${woNeRentPay.neERentpayNumber}</td>
		    						<td>${woNeRentPay.woNeedEquip.eNeedequipState}</td>
		    						<td>${woNeRentPay.categoryTheme.themeName }</td>
		    						<td>${woNeRentPay.companyRentEquip.cRentModelname}</td>
		    						<td>${woNeRentPay.companyRentEquip.cRentCost}</td>
		    						<td>${woNeRentPay.companyRentEquip.cRentDate}</td>
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