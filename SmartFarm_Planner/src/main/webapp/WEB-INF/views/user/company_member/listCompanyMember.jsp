<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>업체회원아이디</th>
				<th>업체통합넘버</th>
				<th>업체회원패스워드</th>
				<th>업체회원이름</th>
				<th>업체회원연락처</th>
				<th>업체회원성별</th>
				<th>업체회원이메일</th>
				<th>업체회원개인정보동의여부</th>
				<th>업체회원도로명주소</th>
				<th>업체회원지번주소</th>
				<th>업체회원상세주소</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="company" items="${list}">
			<tr>
				<td>${company.cMemberId}</td>
				<td>${company.cNumber}</td>
				<td>${company.cMemberPw}</td>
				<td>${company.cMemberName}</td>
				<td>${company.cMemberPhone}</td>
				<td>${company.cMemberGender}</td>
				<td>${company.cMemberEmail}</td>
				<td>${company.cMemberPrivacy}</td>
				<td>${company.cMemberDoroaddress}</td>
				<td>${company.cMemberJibunaddress}</td>
				<td>${company.cMemberDetailaddress}</td>
			</tr>
			
		</c:forEach>
		</tbody>
	
	</table>
</body>
</html>