<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addHumanpay.jsp</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/insertWrHumanPay" method="post">
		<table>
			<thead>
				<tr>
					<td>인부이름</td>
					<td>인부주민번호</td>
					<td>예상일당</td>
					<td>예상작업날짜</td>
					<td>일치</td>
					<td>불일치</td>
					<td>실제일당</td>
					<td>실제작업날짜</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="humanPay" items="${listHumanPay}" varStatus="i">
					<tr>
						<td>${humanPay.eHumanpayName}</td>
						<td>${humanPay.eHumanpayResidentnumber}</td>
						<td>${humanPay.eHumanpayExpectpay}</td>
						<td>${humanPay.eHumanpayExpectday}</td>
						<td><input type="radio" name="agreement"></td>
						<td><input type="radio" name="agreement"></td>
						<td><input type="text" name="wrHumanPayDb[${i.index}].wrHumanpayRealcost"></td>
						<td><input type="Datetime-local" name="wrHumanPayDb[${i.index}].wrHumanpayDate"></td>
						<td><input type="text" name="wrHumanPayDb[${i.index}].wrNumber" value="1"></td>
						<td><input type="text" name="wrHumanPayDb[${i.index}].eHumanpayNumber" value="${humanPay.eHumanpayNumber}"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<button type="submit">등록</button>
	</form>
</body>
</html>