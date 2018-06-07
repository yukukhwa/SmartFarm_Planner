<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addHumanpay.jsp</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<td>번호</td>
				<td>테마</td>
				<td>작업단계</td>
				<td>인부이름</td>
				<td>인부주민번호</td>
				<td>예상일당</td>
				<td>예상작업날짜</td>
				<td>공개여부</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="humanPay" items="${listHumanPay}">
				<tr>
					<td>${humanPay.eHumanpayNumber}</td>
					<td>${humanPay.themeNumber}</td>
					<td>${humanPay.ppWorkNumber}</td>
					<td>${humanPay.eHumanpayName}</td>
					<td>${humanPay.eHumanpayResidentnumber}</td>
					<td>${humanPay.eHumanpayExpectpay}</td>
					<td>${humanPay.eHumanpayExpectday}</td>
					<td>${humanPay.eHumanpaySecret}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>