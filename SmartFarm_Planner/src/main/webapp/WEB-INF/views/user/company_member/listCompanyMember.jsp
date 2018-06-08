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
			<table>
				<thead>
					<tr>
						<th>업체회원이름</th>
						<th>업체회원연락처</th>
						<th>업체회원이메일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="companyMember" items="${list}">
						<tr>
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