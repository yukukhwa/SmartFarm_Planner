<!-- [김재희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listTheme</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#goHome').click(function(){
			location.href = "${pageContext.request.contextPath}/";
		})
		
		$('#themeCateSearch').click(function(){
			$('#themeCateSearchForm').submit();
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
    			해당 페이지에 접근할 수 없는 권한입니다.
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}"> --%>
    			<div>
	    			<form id="themeCateSearchForm" method="post" action="${pageContext.request.contextPath}/listTheme">
	    				<select name="themeCateSearchOption">
	    					<option value="themeName">테마이름</option>
	    					<option value="aName">등록기관이름</option>
	    				</select> <br>
	    				<input type="text" name="searchKeyword">
	    				<button id="themeCateSearch">테마 검색하기</button>
	    			</form>
    			</div>
	    		<h3>테마카테고리 전체 리스트</h3>
	    		<table class="table">
	    			<thead>
	    				<tr>
	    					<th>테마 카테고리 넘버</th>
	    					<th>테마 카테고리 이름</th>
	    					<th>테마 등록기관 이름</th>
	    					<!-- <th>테마 수정</th>
	    					<th>테마 삭제</th> -->
	    				</tr>
	    			</thead>
	    			<c:forEach var="themeCateList" items="${list}">
	    			<tbody>
	    				<tr>
	    					<td>${themeCateList.themeNumber}</td>
	    					<td>${themeCateList.themeName}</td>
	    					<td>${themeCateList.agencyDb.aName}</td>
	    					<!-- 수정,삭제는 자기가 등록한 등록기관만 수정하거나 삭제할 수 있다. -->
	    					<c:if test="${loginMember.corpName == themeCateList.agencyDb.aName}">
	    						<!-- 수정삭제할때 테마의 넘버로 해야할지 이름으로 해야할지..상의해봐야함 일단 테마의 이름으로-->
		    					<td><a href="${pageContext.request.contextPath}/updateTheme?themeName=${themeCateList.themeName}">수정</a></td>
		    					<td><a href="${pageContext.request.contextPath}/deleteTheme?themeNumber=${themeCateList.themeNumber}">삭제</a></td>
	    					</c:if>
	    				</tr>
	    			</tbody>
	    			</c:forEach>
	    		</table>
	    		<button id="goHome">메인화면으로</button>
	    		<a href="${pageContext.request.contextPath}/addTheme">테마 등록하기</a>
	    		<a href="${pageContext.request.contextPath}/listMaterialsCate">원자재비 리스트로 가기</a>
    		<%-- </c:if> --%>
    	</section>
    </section>
</body>
</html>