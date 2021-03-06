<!-- 배건혜 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>updateCategoryEquip</title>
	<jsp:include page="/WEB-INF/views/css.jsp"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('#updateSubmit').click(function(){
			$('#updateForm').submit();
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
    		<c:if test="${loginMember.level != 'agency'}">
    			접근 할 수 없는 권한 입니다.
    		</c:if>
    		<c:if test="${loginMember.level == 'agency'}">
    			<h3>장비종류카테고리 수정</h3>
    			<div>
    				<form action="${pageContext.request.contextPath}/updateCategoryEquip" method="post" id="updateForm">
    					<div>
    						<label>
    							장비종류넘버
    							<input type="number" value="${listCategoryEquip.equipNumber}" disabled="disabled">
    						</label>
    					</div>
    					<div>
    						<label>
    							장비명
    							<input type="text" id="equipName" name="equipName" value="${listCategoryEquip.equipName}">
    							<input type="hidden" id="equipNumber" name="equipNumber" value="${listCategoryEquip.equipNumber}">
    						</label>
    					</div>
    					<div>
    						<label>
    							관리기관
    							<input type="text" id="aName" name="aName" value="${listCategoryEquip.agency.aName}" disabled="disabled">
    						</label>
    					</div>
    					<button id="updateSubmit">수정</button>
    				
    				</form>
    			
    			</div>
    		</c:if>
    	</section>
    </section>
</body>
</html>