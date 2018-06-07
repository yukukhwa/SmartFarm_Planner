<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listAgency</title>
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
			<form action="${pageContext.request.contextPath}/listAgency" method="post">
				<input type="text" name="aName" id="aName">
				<button type="submit">검색</button>
			</form>
			<table>
				<thead>
					<tr>
						<th>관리기관명</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="agencyName">
						<tr>
							<td>
								<a href="${pageContext.request.contextPath}/oneAgency?aName=${agencyName}">${agencyName}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</section>
</body>
</html>