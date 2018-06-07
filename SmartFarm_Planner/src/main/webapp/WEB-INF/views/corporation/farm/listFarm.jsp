<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listFarm</title>
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
				<h3>농가 리스트</h3>
				<table border="1">
					<thead>
						<tr>
							<th>농가 이름</th>
						</tr>
					</thead>
					<c:forEach var="farm" items="${list}">
					<input type="hidden" name="fNumber" value="${farm.fNumber}">
					<tbody>
						<tr>
							<td>
								<a href="${pageContext.request.contextPath}/oneFarm?fNumber=${farm.fNumber}">${farm.fName}</a>
							</td>
						</tr>
					</tbody>
					</c:forEach>
				</table>
				<a href="#">메인화면으로</a>
			</div>
		</section>
	</section>
</body>
</html>