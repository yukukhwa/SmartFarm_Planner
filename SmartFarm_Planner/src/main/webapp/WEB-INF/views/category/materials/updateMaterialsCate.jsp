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
	    					<label>
	    						<input type="hidden" name="themeNumber" readonly="readonly" value="${categoryMaterials.categoryTheme.themeNumber}">
	    						테마 이름 : <input type="text" disabled="disabled" value="${categoryMaterials.categoryTheme.themeName}">
	    						<input type="hidden" name="themeName" value="${categoryMaterials.categoryTheme.themeName}">
	    					</label>
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
	    						<input type="hidden" name="aNumber" readonly="readonly" value="${categoryMaterials.agency.aNumber}">
	    						등록기관 명 : <input type="text" disabled="disabled" value="${categoryMaterials.agency.aName}">
	    						<input type="hidden" name="aName" value="${categoryMaterials.agency.aName}">
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