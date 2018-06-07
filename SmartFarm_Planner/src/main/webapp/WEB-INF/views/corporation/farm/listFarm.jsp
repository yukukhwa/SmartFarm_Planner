<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listFarm</title>
</head>
<body>
	<div>
		<h3>농가 리스트</h3>
		<table border="1">
			<thead>
				<tr>
					<th>농가 통합넘버 </th>
					<th>농가 이름</th>
				</tr>
			</thead>
			<c:forEach var="farm" items="${list}">
			<tbody>
				<tr>
					<td>${farm.fNumber}</td>
					<td>
						<a href="${pageContext.request.contextPath}/oneFarm?fNumber=${farm.fNumber}">${farm.fName}</a>
					</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
		<a href="#">메인화면으로</a>
	</div>
</body>
</html>