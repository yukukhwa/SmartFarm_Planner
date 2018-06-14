<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addMaterialsCate</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#insertMaterialsCate').click(function(){
			$('#insertMaterialsCateForm').submit();
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
    		<c:if test="${loginMember.level != 'agency'}">
    			해당 페이지에 접근할 수 없는 권한입니다.
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}">
	    		<div>
	    			<h3>원자재 카테고리 등록</h3>
	    			<form id="insertMaterialsCateForm" method="post" action="${pageContext.request.contextPath}/addMaterialsCate">
	    				<div>
	    					등록기관넘버 : <input type="text" name="aNumber" value="${loginMember.corpNumber}">
	    				</div>
	    				<div>
	    					<label>
	    						테마 카테고리 선택하기
	    						<select name="themeNumber" id="cateThemeOption">
	    							<option value="" selected="selected" disabled="disabled">테마선택하기</option>
	    							<c:forEach var="cateTheme" items="${categoryTheme}">
	    								<option value="${cateTheme.themeNumber}">${cateTheme.themeName}</option>
	    							</c:forEach>
	    						</select>
	    					</label>
	    				</div>
	    				<div>
    						<label>
    							원자재 카테고리 이름 : <input type="text" name="materialsName">
    						</label>
	    				</div>
	    				<div>
    						<label>
    							원자재 카테고리 단위 : <input type="text" name="materialsUnit">
    						</label>
	    				</div>
	    				<button id="insertMaterialsCate">원자재카테고리 등록하기</button>
	    				<a href="${pageContext.request.contextPath}/listMaterialsCate">원자재 카테고리 리스트로 가기</a>
	    			</form>
	    		</div>
			</c:if>
		</section>
	</section>
</body>
</html>