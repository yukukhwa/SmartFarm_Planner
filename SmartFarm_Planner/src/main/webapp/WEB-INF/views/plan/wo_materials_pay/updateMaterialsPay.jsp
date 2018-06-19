<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateMaterialsPay</title>
<jsp:include page="/WEB-INF/views/css.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#updateMaterialsPay').click(function(){
			$('#updateMaterialsPayForm').submit();
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
    		<h3>예상 원자재비 수정화면</h3>
    		<div>
    			<form id="updateMaterialsPayForm" action="${pageContext.request.contextPath}/updateMaterialsPay" method="post">
    				<div>
    					<input type="hidden" name="eMaterialspayNumber" value="${woMaterialsPay.eMaterialspayNumber}">
    					<input type="hidden" name="ppWorkNumber" value="${woMaterialsPay.ppWork.ppWorkNumber}">
    					<input type="hidden" name="ppNumber" value="${ppNumber}">
    				</div>
    				<div>
    					<label>예상 원자재비 공개여부</label>
    					<input type="radio" checked="checked" name="eMaterialspaySecret" value="true">공개
    					<input type="radio" name="eMaterialspaySecret" value="false">비공개
    				</div>
    				<div>
    					<label>원자재 카테고리 : </label>
    					<select name="categoryMaterials.materialsNumber">
    						<c:forEach var="categoryMaterials" items="${categoryMaterialsList}">
    							<option value="${categoryMaterials.materialsNumber}">${categoryMaterials.materialsName}</option>
    						</c:forEach>
    					</select>
    				</div>
    				<div>
    					<label>작업단계 카테고리</label>
    					<select name="ppWork.ppWorkNumber">
    						<c:forEach var="ppWork" items="${ppWorkList}">
    							<option value="${ppWork.ppWorkNumber}">${ppWork.ppWorkName}</option>
    						</c:forEach>
    					</select>
    				</div>
    				<div>
    					<label>
    						원자재 예정 사용량 : <input type="number"  name="eMaterialspayUse" value="${woMaterialsPay.eMaterialspayUse}">
    					</label>
    				</div>
    				<div>
    					<label>
    						예상 사용원자재 단가 : <input type="number" name="eMaterialspayUnitcost" value="${woMaterialsPay.eMaterialspayUnitcost}">
    					</label>
    				</div>
    				<button id="updateMaterialsPay">예상 원자재비 수정하기</button>
    			</form>
    		</div>
    		<a href="${pageContext.request.contextPath}/listMaterialsPay">원자재비 리스트로 가기 </a>
    	</section>
    </section>
</body>
</html>