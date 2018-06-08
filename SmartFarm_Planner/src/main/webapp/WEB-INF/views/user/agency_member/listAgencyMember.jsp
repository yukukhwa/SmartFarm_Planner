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
						<th>이름</th>
						<th>연락처</th>
						<th>이메일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="agencyMember">
						<tr>
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
    	</section>
    </section>
</body>
</html>