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
			location.href = "${pageContext.request.contextPath}/home";
		})
		
		$('#addTheme').click(function(){
			location.href = "${pageContext.request.contextPath}/addTheme";
		})
		
		$('#goCateMaterialsList').click(function(){
			location.href = "${pageContext.request.contextPath}/listMaterialsCate";
		})
		
		$('#themeCateSearch').click(function(){
			if($('#searchKeyWord').val() == ''){
				alert('검색어를 입력해주세요.');
				$('#searchKeyWord').focus();
				return false;
			}
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
    		<div align="center">
    			<div>
	    			<form id="themeCateSearchForm" method="post" action="${pageContext.request.contextPath}/listTheme">
	    				<select name="themeCateSearchOption">
	    					<option value="themeName">테마이름</option>
	    					<option value="aName">등록기관이름</option>
	    				</select> <br>
	    				<input type="text" class="form-control" style="width: 15%;" id="searchKeyWord" name="searchKeyword">
	    				<button type="button" class="btn btn-info" id="themeCateSearch">테마 검색하기</button>
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
	    			<c:forEach var="categoryTheme" items="${list}">
	    			<tbody>
	    				<tr>
	    					<td>${categoryTheme.themeNumber}</td>
	    					<td>${categoryTheme.themeName}</td>
	    					<td>${categoryTheme.agency.aName}</td>
	    					<!-- 수정,삭제는 자기가 등록한 등록기관이거나 테마카테고리 넘버가 5 초과 일때만 수정하거나 삭제할 수 있다. -->
	    					<c:if test="${loginMember.corpName == categoryTheme.agency.aName && categoryTheme.themeNumber > 5}">
	    						<!-- 수정삭제할때 테마의 넘버로 해야할지 이름으로 해야할지..상의해봐야함 일단 테마의 이름으로-->
		    					<td><a href="${pageContext.request.contextPath}/updateTheme?themeName=${categoryTheme.themeName}">수정</a></td>
		    					<td><a href="${pageContext.request.contextPath}/deleteTheme?themeNumber=${categoryTheme.themeNumber}">삭제</a></td>
	    					</c:if>
	    				</tr>
	    			</tbody>
	    			</c:forEach>
	    		</table>
	    		<button id="goHome" type="button" class="btn btn-default">메인화면으로</button> <br>
	    		<button id="addTheme" type="button" class="btn btn-primary">테마 등록하기</button>
	    		<button id="goCateMaterialsList" type="button" class="btn btn-default">원자재 카테고리 리스트로 가기</button>
    		</div>
    	</section>
    </section>
</body>
</html>