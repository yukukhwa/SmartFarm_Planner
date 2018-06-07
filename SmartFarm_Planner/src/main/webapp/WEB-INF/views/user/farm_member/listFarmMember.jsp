<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listFarmMember</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
</head>
<body>
	<!-- container section start -->
	<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
    <!--sidebar start-->
    <jsp:include page="/WEB-INF/views/left.jsp"></jsp:include>
    <!--sidebar end-->
    <section id="main-content">
		<section class="wrapper">
			<div>
				<h3>농가 회원 리스트</h3>
				<table border="1">
					<thead>
						<tr>
							<th>농가 통합 코드</th>
							<th>농가 아이디</th>
							<th>농가 회원 이름</th>
						</tr>
					</thead>
					<c:forEach var="onefarmMemberList" items="farmMemberList">
					<tbody>
						<tr>
							<td>${fNumber}</td>
							<td>${fMemberId }</td>
							<td>${fMemberName}</td>
						</tr>
					</tbody>
					</c:forEach>
				</table>
			</div>
		</section>
	</section>
	
</body>
</html>