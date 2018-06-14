<!-- 나성수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listItem</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('select#column').change(function(){
		if($(this).val() == '등록기관명'){
			$('input#property').attr('name','aName');
			return;
		}
		if($(this).val() == '산업명'){
			$('input#property').attr('name','industryName');
			return;
		}
		$('input#property').attr('name','iItemName');
		return;
	});
});
</script>
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
    		<form action="${pageContext.request.contextPath}/listItem" method="post">
				<select id="column">
					<option>품목명</option>
					<option>산업명</option>
					<option>등록기관명</option>
				</select>
				<input type="text" name="iItemName" id="property">
				<button type="submit">검색</button>
			</form>
			<table>
				<thead>
					<tr>
						<th>품목넘버</th>
						<th>산업명</th>
						<th>품목명</th>
						<th>등록기관명</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="categoryItemDb">
						<tr>
							<td>
								${categoryItemDb.iItemNumber}
							</td>
							<td>
								${categoryItemDb.categoryIndustryDb.industryName}
							</td>
							<td>
								${categoryItemDb.iItemName}
							</td>
							<td>
								<a href="${pageContext.request.contextPath}/oneAgency?aName=${categoryItemDb.agencyDb.aName}">${categoryItemDb.agencyDb.aName}</a>
							</td>
							<c:if test="${loginMember.corpName == categoryItemDb.agencyDb.aName}">
								<td>
									<a href="${pageContext.request.contextPath}/updateItem?iItemNumber=${categoryItemDb.iItemNumber}"><i class="icon_plus_alt2"></i></a>
								</td>
								<td>
									<a href="${pageContext.request.contextPath}/deleteItem?iItemNumber=${categoryItemDb.iItemNumber}"><i class="icon_close_alt2"></i></a>
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