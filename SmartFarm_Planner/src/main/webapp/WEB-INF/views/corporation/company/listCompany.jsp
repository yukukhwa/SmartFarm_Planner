<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listCompany</title>
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
			<h5>업체리스트</h5>
			<form action="${pageContext.request.contextPath}/listCompany" method="post">
				<input type="text" name="cName">&nbsp;<button type="submit">업체검색</button>
			</form>
			<table>
				<thead>
					<tr>
						<th>업체명</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="company" items="${list}">
						<tr>
							<td>
								<a href="${pageContext.request.contextPath}/oneCompany?cName=${company.cName}">${company.cName}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</section>
</body>
</html>