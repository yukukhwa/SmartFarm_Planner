<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listTitle</title>
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
    		<form action="${pageContext.request.contextPath}/listTitle" method="post">
				<select name="column" id="column">
					<option>계획명</option>
					<option>품목명</option>
					<option>등록농가명</option>
				</select>
				<input type="text" name="property" id="property">
				<button type="submit">검색</button>
			</form>
			<table>
				<thead>
					<tr>
						<th>계획명 넘버</th>
						<th>품목명</th>
						<th>계획명</th>
						<th>등록농가명</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="title">
						<tr>
							<td>
								${title.ppNameNumber}
							</td>
							<td>
								${title.categoryItemDb.iItemName}
							</td>
							<td>
								<a href="#">${title.ppNamePlanname}</a>
							</td>
							<td>
								<a href="${pageContext.request.contextPath}/oneFarm?fName=${title.farmDb.fName}">${title.farmDb.fName}</a>
							</td>
							<c:if test="${loginMember.corpName == title.farmDb.fName}">
								<td>
									<a href="${pageContext.request.contextPath}/updateTitle?ppNameNumber=${title.ppNameNumber}"><i class="icon_plus_alt2"></i></a>
								</td>
								<td>
									<a href="${pageContext.request.contextPath}/deleteTitle?ppNameNumber=${title.ppNameNumber}"><i class="icon_close_alt2"></i></a>
								</td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
    	</section>
    </section>
</body>
</html>