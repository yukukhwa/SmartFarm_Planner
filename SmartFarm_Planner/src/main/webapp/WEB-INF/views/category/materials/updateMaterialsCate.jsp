<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateMaterialsCate</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#updateMaterials').click(function(){
			('#updateMaterialsForm').submit();
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
    			<div>
    				해당 페이지에 접근할 수 없는 권한입니다.
    			</div>
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}">
	    		<div>
	    			<h3>원자재 카테고리 수정하기</h3>
	    			<form id="updateMaterialsForm" action="${pageContext.request.contextPath}/updateMaterialsCate" method="post">
	    				<div>
	    					테마 이름 선택 :
	    					<select name="categoryTheme.themeNumber">
	    						<c:forEach var="categoryTheme" items="${categoryThemeList}">
	    							<option value="${categoryTheme.themeNumber}">${categoryTheme.themeName}</option>
	    						</c:forEach>
	    					</select>
	    				</div>
	    				<div>
	    					<label>
	    						<input type="hidden" name="materialsNumber" readonly="readonly" value="${categoryMaterials.materialsNumber}">
	    						원자재 이름 : <input type="text" name="materialsName" value="${categoryMaterials.materialsName}">
	    					</label>
	    				</div>
	    				<div>
	    					<label>
	    						 원자재 단위 : <input type="text" name="materialsUnit" value="${categoryMaterials.materialsUnit}">
	    					</label>
	    				</div> 
	    				<div>
	    					<label>
	    						<input type="text" name="agency.aNumber" readonly="readonly" value="${loginMember.corpNumber}">
	    					</label> 
	    				</div> <br>
	    				<button id="updateMaterials">원자재 카테고리 수정하기</button>
	    			</form>
	    			<a href="${pageContext.request.contextPath}/listMaterialsCate">원자재 카테고리 리스트로 가기</a>
	    		</div>
    		</c:if>
    	</section>
    </section>
</body>
</html>