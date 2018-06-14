<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listMaterialsCate</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#goHome').click(function(){
			location.href = "${pageContext.request.contextPath}/";
		})
		
		$('#materialsCateSearch').click(function(){
			$('#materialsCateSearchForm').submit();
		})
	})
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
    		<%-- <c:if test="${loginMember.level != 'agency'}">
    			<div>
    				해당 페이지에 접근할 수 없는 권한입니다.
    			</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}"> --%>
			<div>
				<h3>원자재 카테고리 리스트</h3>
				<div>
	    			<form id="materialsCateSearchForm" method="post" action="${pageContext.request.contextPath}/listMaterialsCate">
	    				<select name="materialsCateSearchOption">
	    					<option value="materialsName">원자재 이름</option>
	    					<option value="aName">등록기관이름</option>
	    				</select> <br>
	    				<input type="text" name="searchKeyword">
	    				<button id="materialsCateSearch">테마 검색하기</button>
	    			</form>
    			</div>
				<table border="1">
					<thead>
						<tr>
							<th>원자재 넘버</th>
							<th>테마명</th>
							<th>원자재 이름</th>
							<th>원자재 단위</th>
							<th>등록기관명</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<c:forEach var="categoryMaterialsDb" items="${list}">
					<div>
						<input type="hidden" name="themeNumber" value="${categoryMaterialsDb.categoryThemeDb.themeNumber}">
						<input type="hidden" name="aNumber" value="${categoryMaterialsDb.agencyDb.aNumber}">	
					</div>
					<tbody>
						<tr>
							<td>${categoryMaterialsDb.materialsNumber}</td>
							<td>${categoryMaterialsDb.categoryThemeDb.themeName}</td>
							<td>${categoryMaterialsDb.materialsName}</td>
							<td>${categoryMaterialsDb.materialsUnit}</td>
							<td>${categoryMaterialsDb.agencyDb.aName}</td>
							<td>
								<a href="${pageContext.request.contextPath}/updateMaterialsCate?materialsName=${categoryMaterialsDb.materialsName}">수정</a>
							</td>
							<td>
								<a href="${pageContext.request.contextPath}/deleteMaterialsCate?materialsNumber=${categoryMaterialsDb.materialsNumber}">삭제</a>
							</td>
						</tr>
					</tbody>
					</c:forEach>
				</table>
				<button id="goHome">메인으로</button>
				<a href="${pageContext.request.contextPath}/addMaterialsCate">원자재 카테고리 등록하기</a>
			</div>
			<%-- </c:if> --%>
		</section>
	</section>
</body>
</html>