<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listAgencyMember</title>
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
    		<h3>${aName}</h3>
			<table>
				<thead>
					<tr>
						<th>직급</th>
						<th>이름</th>
						<th>연락처</th>
						<th>이메일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="agencyMember">
						<tr>
							<c:if test="${bossId == agencyMember.aMemberId}">
								<td>
									대표
								</td>
							</c:if>
							<c:if test="${bossId != agencyMember.aMemberId}">
								<td>
									직원
								</td>
							</c:if>
							<td>
								${agencyMember.aMemberName}
							</td>
							<td>
								${agencyMember.aMemberPhone}
							</td>
							<td>
								${agencyMember.aMemberEmail}
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="${pageContext.request.contextPath}/oneAgency?aName=${aName}">뒤로가기</a>
    	</section>
    </section>
</body>
</html>