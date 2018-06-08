<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listCompany</title>
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
			<table border="1">
				<thead>
					<tr>
						<th>업체넘버</th>
						<th>거래처넘버</th>
						<th>업체명</th>
						<th>업체인원</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="companyDb" items="${list}">
						<tr>
							<td>
								${companyDb.cNumber}
							</td>
							<td>
								${companyDb.DealNumber}
							</td>
							<td>
								${companyDb.cName}
							</td>
							<td>
								${companyDb.cParty}
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</section>
</body>
</html>