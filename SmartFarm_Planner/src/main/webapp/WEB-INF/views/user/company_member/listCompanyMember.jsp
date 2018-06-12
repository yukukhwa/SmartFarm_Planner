<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>listCompanyMember</title>
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
    		<h3>${cName}업체의 회원 리스트</h3>
			<table>
				<thead>
					<tr>
						<th>업체회원 이름</th>
						<th>업체회원 연락처</th>
						<th>업체회원 이메일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="companyMember" items="${list}">
						<tr>
							<c:if test="${bossId == companyMember.cMemberId}">
								<td>
									대표
								</td>
							</c:if>
							<c:if test="${bossId != companyMember.cMemberId}">
								<td>
									직원
								</td>
							</c:if>
							<td>${companyMember.cMemberName}</td>
							<td>${companyMember.cMemberPhone}</td>
							<td>${companyMember.cMemberEmail}</td>
						</tr>	
					</c:forEach>
				</tbody>
			</table>
		</section>
    </section>
</body>
</html>